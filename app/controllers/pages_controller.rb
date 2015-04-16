class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource
  
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all.where(index: false)
  end

  def index_page
    @page = Page.first
    @slide_num = 0
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    if @page.published == false
    authorize! :read, @page
    end
  end

  # GET /pages/new
  def new
    @page = Page.new
    @page.build_meta_tag
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)
    @page.index = false
    respond_to do |format|
      if @page.save
        format.html { redirect_to pages_url, notice: 'Page was successfully created.' }
        format.json { render :index, status: :created, location: pages }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        if @page.slides.any?
          @slide = @page.slides.first
          @slide.first = true
          @slide.save
        end
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit( :title, :body, :footer, :rus_title, :published,
        meta_tag_attributes: [ :id, :title, :description, :keywords, :page_id ],
        slides_attributes:   [ :id, :title, :label, :description, :slide_image, :page_id, :url, :first, :_destroy ]
      )
    end
end
