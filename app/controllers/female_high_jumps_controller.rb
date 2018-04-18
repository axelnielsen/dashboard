class FemaleHighJumpsController < ApplicationController
  before_action :set_female_high_jump, only: [:show, :edit, :update, :destroy]

  # GET /female_high_jumps
  # GET /female_high_jumps.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: FemaleHighJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
FemaleHighJump.import(params[:file])
redirect_to female_high_jumps_url, notice: "Importado correctamente"
end

  # GET /female_high_jumps/1
  # GET /female_high_jumps/1.json
  def show
  end

  # GET /female_high_jumps/new
  def new
    @female_high_jump = FemaleHighJump.new
  end

  # GET /female_high_jumps/1/edit
  def edit
  end

  # POST /female_high_jumps
  # POST /female_high_jumps.json
  def create
    @female_high_jump = FemaleHighJump.new(female_high_jump_params)

    respond_to do |format|
      if @female_high_jump.save
        format.html { redirect_to @female_high_jump, notice: 'Female high jump was successfully created.' }
        format.json { render :show, status: :created, location: @female_high_jump }
      else
        format.html { render :new }
        format.json { render json: @female_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_high_jumps/1
  # PATCH/PUT /female_high_jumps/1.json
  def update
    respond_to do |format|
      if @female_high_jump.update(female_high_jump_params)
        format.html { redirect_to @female_high_jump, notice: 'Female high jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_high_jump }
      else
        format.html { render :edit }
        format.json { render json: @female_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_high_jumps/1
  # DELETE /female_high_jumps/1.json
  def destroy
    @female_high_jump.destroy
    respond_to do |format|
      format.html { redirect_to female_high_jumps_url, notice: 'Female high jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_high_jump
      @female_high_jump = FemaleHighJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_high_jump_params
      params.require(:female_high_jump).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
