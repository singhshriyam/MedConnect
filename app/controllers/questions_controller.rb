class QuestionsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: :delete_all

  def index
    @questions = current_user ? current_user.questions : Question.all
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

  def delete_all
    Questions.destroy_all
    head :no_content
  end

  private

  def question_params
    params.require(:question).permit(:user_question)
  end

end
