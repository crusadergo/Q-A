class CorrectionsController < ApplicationController

  def create
    answer = Answer.find params[:answer_id]

    answer.corrections.create correction_params
    redirect_to root_path
  end

  private
    def correction_params
      params.require(:correction).permit(:text)
    end

end
