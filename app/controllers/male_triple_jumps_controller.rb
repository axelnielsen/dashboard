class MaleTripleJumpsController < ApplicationController
  before_action :set_male_triple_jump, only: [:show, :edit, :update, :destroy]

  # GET /male_triple_jumps
  # GET /male_triple_jumps.json
     def index
     respond_to do |format|
       @male_triple_jump = MaleTripleJump.new
     format.html
      format.json { render json: MaleTripleJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleTripleJump.import(params[:file])
redirect_to male_triple_jumps_url, notice: "Importado correctamente"
end
  # GET /male_triple_jumps/1
  # GET /male_triple_jumps/1.json
  def show
  end

  # GET /male_triple_jumps/new
  def new
    @male_triple_jump = MaleTripleJump.new
  end

  # GET /male_triple_jumps/1/edit
  def edit
  end

  # POST /male_triple_jumps
  # POST /male_triple_jumps.json
  def create
    @male_triple_jump = MaleTripleJump.new(male_triple_jump_params)

    respond_to do |format|
      if @male_triple_jump.save
        format.html { redirect_to action:index, notice: 'Male triple jump was successfully created.' }
        format.json { render :show, status: :created, location: @male_triple_jump }
      else
        format.html { render :new }
        format.json { render json: @male_triple_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_triple_jumps/1
  # PATCH/PUT /male_triple_jumps/1.json
  def update
    respond_to do |format|
      if @male_triple_jump.update(male_triple_jump_params)
        format.html { redirect_to @male_triple_jump, notice: 'Male triple jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_triple_jump }
      else
        format.html { render :edit }
        format.json { render json: @male_triple_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_triple_jumps/1
  # DELETE /male_triple_jumps/1.json
  def destroy
    @male_triple_jump.destroy
    respond_to do |format|
      format.html { redirect_to male_triple_jumps_url, notice: 'Male triple jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_triple_jump
      @male_triple_jump = MaleTripleJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_triple_jump_params
      params.require(:male_triple_jump).permit(:number, :name, :an, :club, :reg, :country, :first, :vvFirst, :seconnd, :vvSecond, :third, :vvThird, :op, :fourth, :vvFourth, :fift, :vvFifth, :sixth, :vvSixth, :achievement, :place)
    end
end
