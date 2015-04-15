class CommentAnswersController < ApplicationController 
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_comment
      @comment_answer = Comment_answer.find(params[:id])
    end
    
    def comment_params
      params.require(:comment_answer).permit( :id, :tour_comment_id, :author, :answer_to, :body, :tour_id, :_destroy )
    end

end