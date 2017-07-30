class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new,:create,:edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /websites
  # GET /websites.json
  def index
    @background = "//s3-us-west-2.amazonaws.com/wacbacassetsdonttouch/wacbacassets/background.jpeg"
    #@background = "//encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY40MEW3LWZpDmQW6T0NleSjCTeC-uQskZfFooefmazsBZvRua-GAJdOk"
    @websites = Website.all.limit(12)
    @template_csses = TemplateCss.all.limit(12)
  end

  def mywebsites
    @websites = Website.where('user_id = ?', current_user.id)
  end

  def showall
    @websites = Website.all
  end


  # GET /websites/1
  # GET /websites/1.json
  def show
    @websitepages = @website.pages
    @pages = @websitepages.where(:show_page_on_index => true)
    @times = @website.timetables 
    @search = Inventory.where(:website_id => @website.id).ransack(params[:q])    
    @listings = @search.result.paginate(:per_page => 12, :page => params[:page])    
    @search.build_condition       

    # @newlisting = Listing.new("https://fierce-sea-43472.herokuapp.com/categories.json")    
    # @listings = @newlisting.getresponse((User.find_by_id(@website.user_id).email).to_s)
    # if params[:sort].present? && params[:direction].present?
        
    # else
    #   @listings = @search.result.paginate(:per_page => 12, :page => params[:page])           
    # end

  end


  

  # GET /websites/new
  def new
    @website = Website.new
  end

  # GET /websites/1/edit
  def edit
  end

  # POST /websites
  # POST /websites.json
  def create
    @website = Website.new(website_params)  
    @website.user_id = current_user.id

    respond_to do |format|
      if @website.save

        Website.create_home_page(@website)

        format.html { redirect_to @website, notice: 'Website was successfully created.' }
        format.json { render :show, status: :created, location: @website }
      else
        format.html { render :new }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /websites/1
  # PATCH/PUT /websites/1.json
  def update
    respond_to do |format|
      if @website.update(website_params)
        format.html { redirect_to @website, notice: 'Website was successfully updated.' }
        format.json { render :show, status: :ok, location: @website }
      else
        format.html { render :edit }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /websites/1
  # DELETE /websites/1.json
  def destroy
    @website.destroy
    respond_to do |format|
      format.html { redirect_to websites_url, notice: 'Website was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website
      @website = Website.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_params
      params.require(:website).permit(:title,:logo,:mainimage,:subheading,:title_color, :subheading_color, :footer_color, :footer_text_color,:phone,:city,:state,:zipcode,:facebooklink,:twitterlink,:youtubelink,:template_csses_id,:user_id)
    end

    def sort_column
      Inventory.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end


end






