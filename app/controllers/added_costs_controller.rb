class AddedCostsController < ApplicationController
  before_action :set_added_cost, only: [:show, :edit, :update, :destroy]

  # GET /added_costs
  # GET /added_costs.json
  def index
    @added_costs = AddedCost.all
  end

  # GET /added_costs/1
  # GET /added_costs/1.json
  def show
  end

  # GET /added_costs/new
  def new
    @added_cost = AddedCost.new
  end

  # GET /added_costs/1/edit
  def edit
  end

  # POST /added_costs
  # POST /added_costs.json
  def create
    @added_cost = AddedCost.new(added_cost_params)

    respond_to do |format|
      if @added_cost.save
        format.html { redirect_to @added_cost, notice: 'Added cost was successfully created.' }
        format.json { render :show, status: :created, location: @added_cost }
      else
        format.html { render :new }
        format.json { render json: @added_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /added_costs/1
  # PATCH/PUT /added_costs/1.json
  def update
    respond_to do |format|
      if @added_cost.update(added_cost_params)
        format.html { redirect_to @added_cost, notice: 'Added cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @added_cost }
      else
        format.html { render :edit }
        format.json { render json: @added_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /added_costs/1
  # DELETE /added_costs/1.json
  def destroy
    @added_cost.destroy
    respond_to do |format|
      format.html { redirect_to added_costs_url, notice: 'Added cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_added_cost
      @added_cost = AddedCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def added_cost_params
      params.require(:added_cost).permit(:cost_date, :cost, :billed, :labor_cost_total, :total, :method_of_payment)
    end
end
