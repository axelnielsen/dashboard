class MaleHighJumpsController < ApplicationController
  before_action :set_male_high_jump, only: [:show, :edit, :update, :destroy]

  # GET /male_high_jumps
  # GET /male_high_jumps.json
      def index
     respond_to do |format|
       @male_high_jump = MaleHighJump.new
     format.html
      format.json { render json: MaleHighJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleHighJump.import(params[:file])
redirect_to male_high_jumps_url, notice: "Importado correctamente"
end
  # GET /male_high_jumps/1
  # GET /male_high_jumps/1.json
  def show
  end

  # GET /male_high_jumps/new
  def new
    @male_high_jump = MaleHighJump.new
  end

  # GET /male_high_jumps/1/edit
  def edit
  end

  # POST /male_high_jumps
  # POST /male_high_jumps.json
  def create
    @male_high_jump = MaleHighJump.new(male_high_jump_params)

    respond_to do |format|
      if @male_high_jump.save
        format.html { redirect_to action:index, notice: 'Male high jump was successfully created.' }
        format.json { render :show, status: :created, location: @male_high_jump }
      else
        format.html { render :new }
        format.json { render json: @male_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_high_jumps/1
  # PATCH/PUT /male_high_jumps/1.json
  def update
    respond_to do |format|
      if @male_high_jump.update(male_high_jump_params)
        format.html { redirect_to @male_high_jump, notice: 'Male high jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_high_jump }
      else
        format.html { render :edit }
        format.json { render json: @male_high_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_high_jumps/1
  # DELETE /male_high_jumps/1.json
  def destroy
    @male_high_jump.destroy
    respond_to do |format|
      format.html { redirect_to male_high_jumps_url, notice: 'Male high jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_high_jump
      @male_high_jump = MaleHighJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_high_jump_params
      params.require(:male_high_jump).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
