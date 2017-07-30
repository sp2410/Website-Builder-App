class PreviousOwnersController < ApplicationController
  before_action :set_previous_owner, only: [:show, :edit, :update, :destroy]

  # GET /previous_owners
  # GET /previous_owners.json
  def index
    @previous_owners = PreviousOwner.all
  end

  # GET /previous_owners/1
  # GET /previous_owners/1.json
  def show
  end

  # GET /previous_owners/new
  def new
    @previous_owner = PreviousOwner.new
  end

  # GET /previous_owners/1/edit
  def edit
  end

  # POST /previous_owners
  # POST /previous_owners.json
  def create
    @previous_owner = PreviousOwner.new(previous_owner_params)

    respond_to do |format|
      if @previous_owner.save
        format.html { redirect_to @previous_owner, notice: 'Previous owner was successfully created.' }
        format.json { render :show, status: :created, location: @previous_owner }
      else
        format.html { render :new }
        format.json { render json: @previous_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previous_owners/1
  # PATCH/PUT /previous_owners/1.json
  def update
    respond_to do |format|
      if @previous_owner.update(previous_owner_params)
        format.html { redirect_to @previous_owner, notice: 'Previous owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @previous_owner }
      else
        format.html { render :edit }
        format.json { render json: @previous_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_owners/1
  # DELETE /previous_owners/1.json
  def destroy
    @previous_owner.destroy
    respond_to do |format|
      format.html { redirect_to previous_owners_url, notice: 'Previous owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_previous_owner
      @previous_owner = PreviousOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def previous_owner_params
      params.require(:previous_owner).permit(:name, :street_address, :zip, :city, :state, :phone, :used_vehicle_for)
    end
end
