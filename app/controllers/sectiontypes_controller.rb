class SectiontypesController < ApplicationController
  before_action :set_sectiontype, only: [:show, :edit, :update, :destroy]

  # GET /sectiontypes
  # GET /sectiontypes.json
  def index
    @sectiontypes = Sectiontype.all
  end

  # GET /sectiontypes/1
  # GET /sectiontypes/1.json
  def show
  end

  # GET /sectiontypes/new
  def new
    @sectiontype = Sectiontype.new
  end

  # GET /sectiontypes/1/edit
  def edit
  end

  


  # POST /sectiontypes
  # POST /sectiontypes.json
  def create
    @website = Website.find_by_id(params[:website_id])
    @page = Page.find_by_id(params[:page_id])
    @pagesection = PageSection.find_by_id(params[:page_section_id])
    @sectiontype = Sectiontype.new sectiontype_params.merge! page_section_id: @pagesection.id

    respond_to do |format|
      if @sectiontype.save
        format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Sectiontype was successfully created.' }
        format.json { render :show, status: :created, location: website_page_path(@website.id,@page.id) }
      else
        format.html { render :new }
        format.json { render json: @sectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectiontypes/1
  # PATCH/PUT /sectiontypes/1.json
  def update
    @pagesection = PageSection.find_by_id(params[:page_section_id])

    respond_to do |format|
      if @sectiontype.update(sectiontype_params)
        format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Sectiontype was successfully updated.' }
        format.json { render :show, status: :ok, location: website_page_path(@website.id,@page.id) }
      else
        format.html { render :edit }
        format.json { render json: @sectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectiontypes/1
  # DELETE /sectiontypes/1.json
  def destroy
    @sectiontype.destroy
    respond_to do |format|
      format.html { redirect_to website_page_path(@website.id,@page.id), notice: 'Sectiontype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectiontype
      @sectiontype = Sectiontype.find(params[:id])
      @website = Website.find_by_id(params[:website_id])
      @page = Page.find_by_id(params[:page_id])
      @page_section = PageSection.find(params[:page_section_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sectiontype_params      
      params.require(:sectiontype).permit(:widget_type, :title,:type_url, :font_type, :font_type, :details, :page_section_id,:image_border,:text_color)

    end
end
