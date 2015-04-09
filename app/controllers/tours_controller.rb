class ToursController < ApplicationController

  before_action :set_tour, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource

  # GET /tours
  # GET /tours.json
  def index
    @tours = Tour.all
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    @question = Question.new

    if @tour.published == false
    authorize! :read, @tour
    end
  end

  # GET /tours/new
  def new
    @tour = Tour.new
    @tour.build_meta_tag
  end

  # GET /tours/1/edit
  def edit
  end

  def create_question
    @tour = Tour.find(params[:id])
    @question = Question.new(question_params)
    @question.status = true
    @question.single = false
    @question.tour_id = @tour.id
    respond_to do |format|
      if @question.save

        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render :show, status: :created, location: @tour }
      else
        format.html { render :new }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /tours
  # POST /tours.json
  def create
    @tour = Tour.new(tour_params)

    respond_to do |format|
      if @tour.save

        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render :show, status: :created, location: @tour }
      else
        format.html { render :new }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tours/1
  # PATCH/PUT /tours/1.json
  def update
    respond_to do |format|
      if @tour.update(tour_params)

      if params[:images]
        params[:images].each { |image|
        @tour.tour_days.create(images: image)
        }
      end

        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour }
      else
        format.html { render :edit }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour.destroy
    respond_to do |format|
      format.html { redirect_to tours_url, notice: 'Tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_params
      params.require(:tour).permit( :title, :short_description, :has_many_day, :has_many_night, :season, :place, :place_info, :description, :min_group_count, :max_group_count, :price, :tour_type, :mark, :rus_title, :published, :image_title, :image, :included_services, :not_included_services, :category_id, :delete_image,
        tour_days_attributes:       [ :id, :day_num, :day_desc, :day_note, :day_name, :tour_id, :_destroy, 
          day_images_attributes:    [ :id, :tour_day_id, :title, :image, :_destroy ]
        ],
        tour_comments_attributes: [ :id ,:tour_id, :author, :title, :body, :parent_id, :_destroy],
        meta_tag_attributes:      [ :id, :title, :description, :keywords, :tour_id ],
        questions_attributes:     [ :id, :title, :email, :name, :body, :tour_id, :status ]
      )
    end

    def question_params
      params.require(:question).permit(:title, :email, :name, :body)
    end
end
