class JumpsController < ApplicationController
  before_action :set_jump, only: [:show, :edit, :update, :destroy]

  # GET /jumps
  # GET /jumps.json
  def index
     respond_to do |format|
       @jump = Jump.new
     format.html
      format.json { render json: JumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Jump.import(params[:file])
redirect_to jumps_url, notice: "Importado correctamente"
end
  # GET /jumps/1
  # GET /jumps/1.json
  def show
  end

  # GET /jumps/new
  def new
    @jump = Jump.new
  end

  # GET /jumps/1/edit
  def edit
  end

  # POST /jumps
  # POST /jumps.json
  def create
    @jump = Jump.new(jump_params)

    respond_to do |format|
      if @jump.save
        format.html { redirect_to action:index, notice: 'Jump was successfully created.' }
        format.json { render :show, status: :created, location: @jump }
      else
        format.html { render :new }
        format.json { render json: @jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jumps/1
  # PATCH/PUT /jumps/1.json
  def update
    respond_to do |format|
      if @jump.update(jump_params)
        format.html { redirect_to @jump, notice: 'Jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @jump }
      else
        format.html { render :edit }
        format.json { render json: @jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jumps/1
  # DELETE /jumps/1.json
  def destroy
    @jump.destroy
    respond_to do |format|
      format.html { redirect_to jumps_url, notice: 'Jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jump
      @jump = Jump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jump_params
      params.require(:jump).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
