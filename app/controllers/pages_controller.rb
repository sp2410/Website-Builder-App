class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @website = Website.find_by_id(@page.website_id)    
    @websitepages = @website.pages        
    @times = @website.timetables
    @sections = @page.page_sections    
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    #@page = Page.new(page_params)

    @website = Website.find(params[:website_id])
    @page = Page.new page_params.merge! website_id: @website.id

    respond_to do |format|
      if @page.save
        format.html { redirect_to website_page_path(@website.id, @page), notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: website_page_path(:website_id, @page) }
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
        format.html { redirect_to Website.find_by_id(@page.website_id), notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: Website.find_by_id(@page.website_id) }
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
      format.html { redirect_to website_path(params[:website_id]), notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id]) 
      @website = Website.find_by_id(params[:website_id])          
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title,:website_id,:show_page_on_index,:header,:header_color,:subheader,:subheader_color,:page_color)
    end
end
