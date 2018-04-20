class StartFemaleHighJumpsController < ApplicationController
  before_action :set_start_female_high_jump, only: [:show, :edit, :update, :destroy]

  # GET /start_female_high_jumps
  # GET /start_female_high_jumps.json
        def index
     respond_to do |format|
     format.html
      format.json { render json: StartFemaleHighJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemaleHighJump.import(params[:file])
redirect_to start_female_high_jumps_url, notice: "Importado correctamente"
end

  # GET /start_female_high_jumps/1
  # GET /start_female_high_jumps/1.json
  def show
  end

  # GET /start_female_high_jumps/new
  def new
    @start_female_high_jump = StartFemaleHighJump.new
  end

  # GET /start_female_high_jumps/1/edit
  def edit
  end

  # POST /start_female_high_jumps
  # POST /start_female_high_jumps.json
  def create
    @start_female_high_jump = StartFemaleHighJump.new(start_female_high_jump_params)

    respond_to do |format|
      if @start_female_high_jump.save
        format.html { redirect_to @start_female_high_jump, notice: 'Start female high jump was successfully created.' }
        format.json { render :show, status: :created, location: @start_female_high_jump }
      else
        format.html { render :new }
        format.json { render json: @start_female_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female_high_jumps/1
  # PATCH/PUT /start_female_high_jumps/1.json
  def update
    respond_to do |format|
      if @start_female_high_jump.update(start_female_high_jump_params)
        format.html { redirect_to @start_female_high_jump, notice: 'Start female high jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female_high_jump }
      else
        format.html { render :edit }
        format.json { render json: @start_female_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female_high_jumps/1
  # DELETE /start_female_high_jumps/1.json
  def destroy
    @start_female_high_jump.destroy
    respond_to do |format|
      format.html { redirect_to start_female_high_jumps_url, notice: 'Start female high jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female_high_jump
      @start_female_high_jump = StartFemaleHighJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female_high_jump_params
      params.require(:start_female_high_jump).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :femalehighjumpStart_id)
    end
end
