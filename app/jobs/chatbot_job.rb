class ChatbotJob < ApplicationJob
  queue_as :default

  def perform(question)
    @question = question
    chatgpt_response = client.chat(
      parameters: {
        model: "gpt-4o-mini",
        messages: questions_formatted_for_openai
      }
    )
    new_content = chatgpt_response["choices"][0]["message"]["content"]

    question.update(ai_answer: new_content)
    Turbo::StreamsChannel.broadcast_update_to(
      "question_#{@question.id}",
      target: "question_#{@question.id}",
      partial: "questions/question",
      locals: { question: @question }
    )
  end

  private

  def client
    @client ||= OpenAI::Client.new
  end

  def questions_formatted_for_openai
    questions = @question.user.questions
    results = []
    system_text = <<~SYSTEM
      You are an interactive assistant for a healthcare platform:
      1. Provide information about doctors, healthcare queries, appointment processes, and platform features.
      2. Maintain conversation context to handle follow-up questions seamlessly.
      3. Include emojis to make responses engaging. Example: "Would you like to book an appointment? 😊"
      4. After responding, prompt the user: "How can i assist you further? 😊"
      5. If unsure about an answer, suggest contacting support or checking the FAQ.

      Here is the list of doctors available:
    SYSTEM

    nearest_doctors.each do |doctor|
      system_text += "** Doctor #{doctor.full_name}: experience: #{doctor.experience}, description: #{doctor.description} **\n"
    end
    results << { role: "system", content: system_text }

    questions.each do |question|
      results << { role: "user", content: question.user_question }
      results << { role: "assistant", content: question.ai_answer || "" }
    end
    return results
  end

  def nearest_doctors
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input: @question.user_question
      }
    )
    question_embedding = response['data'][0]['embedding']
    return Doctor.nearest_neighbors(
      :embedding, question_embedding,
      distance: "euclidean"
    ).first(3)
  end

end
