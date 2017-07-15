class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  # GET /inventories
  # GET /inventories.json
  def index
    @inventories = Inventory.all
  end

  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  # GET /inventories/new
  def new
    @website = Website.find(params[:website_id])  
    @websitepages = @website.pages
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
    @website = Website.find(params[:website_id])  
    @websitepages = @website.pages
    
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @website = Website.find(params[:website_id]) 
    @websitepages = @website.pages    
    @inventory = Inventory.new inventory_params.merge!website_id: @website.id

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @website, notice: 'Inventory was successfully created.' }
        format.json { render :show, status: :created, location: @website}
      else
        format.html { render :new }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    @website = Website.find(params[:website_id])
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @website, notice: 'Inventory was successfully updated.' }
        format.json { render :show, status: :created, location: @website}
      else
        format.html { render :edit }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:title, :description, :street, :city, :state, :zipcode, :latitude, :longitude, :user_id, :image, :year, :miles, :transmission, :color, :cylinder, :fuel, :drive, :price, :newused, :vin, :model, :trim, :enginedescription, :interiorcolor, :imagefront, :imageback, :imageleft, :imageright, :frontinterior, :rearinterior)
    end
end
