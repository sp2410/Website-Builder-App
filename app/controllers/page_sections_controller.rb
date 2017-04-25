class PageSectionsController < ApplicationController
  before_action :set_page_section, only: [:show, :edit, :update, :destroy]

  # GET /page_sections
  # GET /page_sections.json
  def index
    @page_sections = PageSection.all
  end

  # GET /page_sections/1
  # GET /page_sections/1.json
  def show    
  end

  # GET /page_sections/new
  def new
    @page_section = PageSection.new
  end

  # GET /page_sections/1/edit
  def edit
  end

  # POST /page_sections
  # POST /page_sections.json
  def create    
    @website = Website.find_by_id(params[:website_id])
    @page = Page.find_by_id(params[:page_id])
    @page_section = PageSection.new page_section_params.merge! page_id: @page.id
    

    respond_to do |format|
      if @page_section.save
        format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Page section was successfully created.' }
        format.json { render :show, status: :created, location:website_page_path(@website.id,@page.id)}
      else
        format.html { render :new }
        format.json { render json: @page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_sections/1
  # PATCH/PUT /page_sections/1.json
  def update
    respond_to do |format|
      if @page_section.update(page_section_params)
        format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Page section was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_sections/1
  # DELETE /page_sections/1.json
  def destroy
    @page_section.destroy
    respond_to do |format|
      format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Page section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_section
      @page_section = PageSection.find(params[:id])
      @page = Page.find(params[:page_id])
      @website = Website.find_by_id(params[:website_id])      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_section_params
      params.require(:page_section).permit(:number_of_elements,:background_color,:page_id)
    end
end

