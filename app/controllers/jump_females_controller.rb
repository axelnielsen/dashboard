class JumpFemalesController < ApplicationController
  before_action :set_jump_female, only: [:show, :edit, :update, :destroy]

  # GET /jump_females
  # GET /jump_females.json
  def index
     respond_to do |format|
      @jump_female = JumpFemale.new
     format.html
      format.json { render json: JumpFemalesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
JumpFemale.import(params[:file])
redirect_to jump_females_url, notice: "Importado correctamente"
end
  # GET /jump_females/1
  # GET /jump_females/1.json
  def show
  end

  # GET /jump_females/new
  def new
    @jump_female = JumpFemale.new
  end

  # GET /jump_females/1/edit
  def edit
  end

  # POST /jump_females
  # POST /jump_females.json
  def create
    @jump_female = JumpFemale.new(jump_female_params)

    respond_to do |format|
      if @jump_female.save
        format.html { redirect_to action:index, notice: 'Jump female was successfully created.' }
        format.json { render :show, status: :created, location: @jump_female }
      else
        format.html { render :new }
        format.json { render json: @jump_female.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jump_females/1
  # PATCH/PUT /jump_females/1.json
  def update
    respond_to do |format|
      if @jump_female.update(jump_female_params)
        format.html { redirect_to @jump_female, notice: 'Jump female was successfully updated.' }
        format.json { render :show, status: :ok, location: @jump_female }
      else
        format.html { render :edit }
        format.json { render json: @jump_female.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jump_females/1
  # DELETE /jump_females/1.json
  def destroy
    @jump_female.destroy
    respond_to do |format|
      format.html { redirect_to jump_females_url, notice: 'Jump female was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jump_female
      @jump_female = JumpFemale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jump_female_params
      params.require(:jump_female).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
