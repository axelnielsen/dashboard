class MaleLongJumpsController < ApplicationController
  before_action :set_male_long_jump, only: [:show, :edit, :update, :destroy]

  # GET /male_long_jumps
  # GET /male_long_jumps.json
        def index
     respond_to do |format|
      @male_long_jump = MaleLongJump.new
     format.html
      format.json { render json: MaleLongJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleLongJump.import(params[:file])
redirect_to male_long_jumps_url, notice: "Importado correctamente"
end
  # GET /male_long_jumps/1
  # GET /male_long_jumps/1.json
  def show
  end

  # GET /male_long_jumps/new
  def new
    @male_long_jump = MaleLongJump.new
  end

  # GET /male_long_jumps/1/edit
  def edit
  end

  # POST /male_long_jumps
  # POST /male_long_jumps.json
  def create
    @male_long_jump = MaleLongJump.new(male_long_jump_params)

    respond_to do |format|
      if @male_long_jump.save
        format.html { redirect_to action:index, notice: 'Male long jump was successfully created.' }
        format.json { render :show, status: :created, location: @male_long_jump }
      else
        format.html { render :new }
        format.json { render json: @male_long_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_long_jumps/1
  # PATCH/PUT /male_long_jumps/1.json
  def update
    respond_to do |format|
      if @male_long_jump.update(male_long_jump_params)
        format.html { redirect_to @male_long_jump, notice: 'Male long jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_long_jump }
      else
        format.html { render :edit }
        format.json { render json: @male_long_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_long_jumps/1
  # DELETE /male_long_jumps/1.json
  def destroy
    @male_long_jump.destroy
    respond_to do |format|
      format.html { redirect_to male_long_jumps_url, notice: 'Male long jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_long_jump
      @male_long_jump = MaleLongJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_long_jump_params
      params.require(:male_long_jump).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
