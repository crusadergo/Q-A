class AnswersController < ApplicationController

  def create
    question = Question.find params[:question_id]
    
    question.answers.create answer_params
    redirect_to root_path
  end

  private
    def answer_params
      params.require(:answer).permit(:text)
    end

end
