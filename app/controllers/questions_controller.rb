class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all.where(tour_id: 0).order(status: :DESC, created_at: :DESC)
  end

  def tour_questions
    @questions = Question.all.where.not(tour_id: 0).order(status: :DESC, created_at: :DESC)
  end

  def read
    @question = Question.find(params[:id])
    @question.status = false
    @question.save
    redirect_to :back
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.tour_id = 0
    @question.status = true
    @question.single = true
    respond_to do |format|
      if @question.save
        format.html { redirect_to :back, notice: 'Question was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    if @question.tour_id == 0 
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
    else
    @question.destroy
    respond_to do |format|
      format.html { redirect_to tour_questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :email, :name, :body, :tour_id, :status, :single)
    end
end
