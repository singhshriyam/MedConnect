class QuestionsController < ApplicationController

  after_action :clear_questions, only: [:index]

  def index
    @questions = current_user ? current_user.questions : []
    @question = Question.new
  end

  def create
    @questions = current_user ? current_user.questions : []
    @question = Question.new(question_params)
    @question.user = current_user if current_user
    if @question.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:questions, partial: "questions/question",
            locals: { question: @question })
        end
        format.html { redirect_to questions_path }
      end
    else
     render :index, status: :unprocessable_entity
    end
  end


  private

  def question_params
    params.require(:question).permit(:user_question)
  end

  def clear_questions
    Question.where(user_id: current_user.id).destroy_all
  end
end
