class TourCommentsController < ApplicationController 

  load_and_authorize_resource
  
  def new
    @tour_comment = Tour_comment.new(parent_id: params[:parent_id])
  end

  def create

    @tour = Tour.find(params[:tour_id])

    if params[:parent_id].to_i > 0
    parent = TourComment.find_by_id(params[].delete(:parent_id))
    @comment = parent.children.build(comment_params)
    else
    
    @tour_comment = @tour.tour_comments.build(comment_params)

    respond_to do |format|
      if @tour_comment.save

        format.html { redirect_to @tour, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @tour_comment }
      else
        format.html { render :new }
        format.json { render json: @tour_comment.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_comment
      @tour_comment = Tour_comment.find(params[:id])
    end
    
    def comment_params
      params.require(:tour_comment).permit( :tour_id, :author, :title, :body, :parent_id, :_destroy )
    end
end