class VehicleCostsController < ApplicationController
  before_action :set_vehicle_cost, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_costs
  # GET /vehicle_costs.json
  def index
    @vehicle_costs = VehicleCost.all
  end

  # GET /vehicle_costs/1
  # GET /vehicle_costs/1.json
  def show
  end

  # GET /vehicle_costs/new
  def new
    @vehicle_cost = VehicleCost.new
  end

  # GET /vehicle_costs/1/edit
  def edit
  end

  # POST /vehicle_costs
  # POST /vehicle_costs.json
  def create
    @vehicle_cost = VehicleCost.new(vehicle_cost_params)

    respond_to do |format|
      if @vehicle_cost.save
        format.html { redirect_to @vehicle_cost, notice: 'Vehicle cost was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_cost }
      else
        format.html { render :new }
        format.json { render json: @vehicle_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_costs/1
  # PATCH/PUT /vehicle_costs/1.json
  def update
    respond_to do |format|
      if @vehicle_cost.update(vehicle_cost_params)
        format.html { redirect_to @vehicle_cost, notice: 'Vehicle cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_cost }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_costs/1
  # DELETE /vehicle_costs/1.json
  def destroy
    @vehicle_cost.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_costs_url, notice: 'Vehicle cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_cost
      @vehicle_cost = VehicleCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_cost_params
      params.require(:vehicle_cost).permit(:purchasedate, :originalcost, :buyerfee, :lotfee, :addedcst, :floorplancost, :totalcost, :methodofpayment)
    end
end
