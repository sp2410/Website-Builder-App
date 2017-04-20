class TemplateCssesController < ApplicationController
  before_action :set_template_css, only: [:show, :edit, :update, :destroy]

  # GET /template_csses
  # GET /template_csses.json
  def index
    @template_csses = TemplateCss.all
  end

  # GET /template_csses/1
  # GET /template_csses/1.json
  def show
  end

  # GET /template_csses/new
  def new
    @template_css = TemplateCss.new
  end

  # GET /template_csses/1/edit
  def edit
  end

  # POST /template_csses
  # POST /template_csses.json
  def create
    @template_css = TemplateCss.new(template_css_params)

    respond_to do |format|
      if @template_css.save
        format.html { redirect_to @template_css, notice: 'Template css was successfully created.' }
        format.json { render :show, status: :created, location: @template_css }
      else
        format.html { render :new }
        format.json { render json: @template_css.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_csses/1
  # PATCH/PUT /template_csses/1.json
  def update
    respond_to do |format|
      if @template_css.update(template_css_params)
        format.html { redirect_to @template_css, notice: 'Template css was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_css }
      else
        format.html { render :edit }
        format.json { render json: @template_css.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_csses/1
  # DELETE /template_csses/1.json
  def destroy
    @template_css.destroy
    respond_to do |format|
      format.html { redirect_to template_csses_url, notice: 'Template css was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_css
      @template_css = TemplateCss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_css_params
      params.require(:template_css).permit(:name,:css_description)
    end
end
