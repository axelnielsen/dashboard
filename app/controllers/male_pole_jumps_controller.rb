class MalePoleJumpsController < ApplicationController
  before_action :set_male_pole_jump, only: [:show, :edit, :update, :destroy]

  # GET /male_pole_jumps
  # GET /male_pole_jumps.json
    def index
     respond_to do |format|
     format.html
      format.json { render json: MalePoleJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MalePoleJump.import(params[:file])
redirect_to male_pole_jumps_url, notice: "Importado correctamente"
end

  # GET /male_pole_jumps/1
  # GET /male_pole_jumps/1.json
  def show
  end

  # GET /male_pole_jumps/new
  def new
    @male_pole_jump = MalePoleJump.new
  end

  # GET /male_pole_jumps/1/edit
  def edit
  end

  # POST /male_pole_jumps
  # POST /male_pole_jumps.json
  def create
    @male_pole_jump = MalePoleJump.new(male_pole_jump_params)

    respond_to do |format|
      if @male_pole_jump.save
        format.html { redirect_to @male_pole_jump, notice: 'Male pole jump was successfully created.' }
        format.json { render :show, status: :created, location: @male_pole_jump }
      else
        format.html { render :new }
        format.json { render json: @male_pole_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_pole_jumps/1
  # PATCH/PUT /male_pole_jumps/1.json
  def update
    respond_to do |format|
      if @male_pole_jump.update(male_pole_jump_params)
        format.html { redirect_to @male_pole_jump, notice: 'Male pole jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_pole_jump }
      else
        format.html { render :edit }
        format.json { render json: @male_pole_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_pole_jumps/1
  # DELETE /male_pole_jumps/1.json
  def destroy
    @male_pole_jump.destroy
    respond_to do |format|
      format.html { redirect_to male_pole_jumps_url, notice: 'Male pole jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_pole_jump
      @male_pole_jump = MalePoleJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_pole_jump_params
      params.require(:male_pole_jump).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :malepolejumpsHead_id)
    end
end
