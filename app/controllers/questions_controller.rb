class QuestionsController < ApplicationController
  def new
    question = Question.new
  end

  def create
    article = Question.new question_params

    article.save
    redirect_to root_path
  end

  private
    def question_params
      params.require(:question).permit(:title, :description)
    end
end
