class StartMalePoleJumpsController < ApplicationController
  before_action :set_start_male_pole_jump, only: [:show, :edit, :update, :destroy]

  # GET /start_male_pole_jumps
  # GET /start_male_pole_jumps.json
        def index
     respond_to do |format|
     format.html
      format.json { render json: StartMalePoleJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMalePoleJump.import(params[:file])
redirect_to start_male_pole_jumps_url, notice: "Importado correctamente"
end


  # GET /start_male_pole_jumps/1
  # GET /start_male_pole_jumps/1.json
  def show
  end

  # GET /start_male_pole_jumps/new
  def new
    @start_male_pole_jump = StartMalePoleJump.new
  end

  # GET /start_male_pole_jumps/1/edit
  def edit
  end

  # POST /start_male_pole_jumps
  # POST /start_male_pole_jumps.json
  def create
    @start_male_pole_jump = StartMalePoleJump.new(start_male_pole_jump_params)

    respond_to do |format|
      if @start_male_pole_jump.save
        format.html { redirect_to @start_male_pole_jump, notice: 'Start male pole jump was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_pole_jump }
      else
        format.html { render :new }
        format.json { render json: @start_male_pole_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_pole_jumps/1
  # PATCH/PUT /start_male_pole_jumps/1.json
  def update
    respond_to do |format|
      if @start_male_pole_jump.update(start_male_pole_jump_params)
        format.html { redirect_to @start_male_pole_jump, notice: 'Start male pole jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_pole_jump }
      else
        format.html { render :edit }
        format.json { render json: @start_male_pole_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_pole_jumps/1
  # DELETE /start_male_pole_jumps/1.json
  def destroy
    @start_male_pole_jump.destroy
    respond_to do |format|
      format.html { redirect_to start_male_pole_jumps_url, notice: 'Start male pole jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_pole_jump
      @start_male_pole_jump = StartMalePoleJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_pole_jump_params
      params.require(:start_male_pole_jump).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :malepolejumpStart_id)
    end
end
