class AddedCostVendorsController < ApplicationController
  before_action :set_added_cost_vendor, only: [:show, :edit, :update, :destroy]

  # GET /added_cost_vendors
  # GET /added_cost_vendors.json
  def index
    @added_cost_vendors = AddedCostVendor.all
  end

  # GET /added_cost_vendors/1
  # GET /added_cost_vendors/1.json
  def show
  end

  # GET /added_cost_vendors/new
  def new
    @added_cost_vendor = AddedCostVendor.new
  end

  # GET /added_cost_vendors/1/edit
  def edit
  end

  # POST /added_cost_vendors
  # POST /added_cost_vendors.json
  def create
    @added_cost_vendor = AddedCostVendor.new(added_cost_vendor_params)

    respond_to do |format|
      if @added_cost_vendor.save
        format.html { redirect_to @added_cost_vendor, notice: 'Added cost vendor was successfully created.' }
        format.json { render :show, status: :created, location: @added_cost_vendor }
      else
        format.html { render :new }
        format.json { render json: @added_cost_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /added_cost_vendors/1
  # PATCH/PUT /added_cost_vendors/1.json
  def update
    respond_to do |format|
      if @added_cost_vendor.update(added_cost_vendor_params)
        format.html { redirect_to @added_cost_vendor, notice: 'Added cost vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @added_cost_vendor }
      else
        format.html { render :edit }
        format.json { render json: @added_cost_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /added_cost_vendors/1
  # DELETE /added_cost_vendors/1.json
  def destroy
    @added_cost_vendor.destroy
    respond_to do |format|
      format.html { redirect_to added_cost_vendors_url, notice: 'Added cost vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_added_cost_vendor
      @added_cost_vendor = AddedCostVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def added_cost_vendor_params
      params.require(:added_cost_vendor).permit(:name, :contact)
    end
end
