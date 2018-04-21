class MaleHammerThrowsController < ApplicationController
  before_action :set_male_hammer_throw, only: [:show, :edit, :update, :destroy]

  # GET /male_hammer_throws
  # GET /male_hammer_throws.json
   def index
     respond_to do |format|
       @male_hammer_throw = MaleHammerThrow.new
     format.html
      format.json { render json: MaleHammerThrowsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleHammerThrow.import(params[:file])
redirect_to male_hammer_throws_url, notice: "Importado correctamente"
end
  # GET /male_hammer_throws/1
  # GET /male_hammer_throws/1.json
  def show
  end

  # GET /male_hammer_throws/new
  def new
    @male_hammer_throw = MaleHammerThrow.new
  end

  # GET /male_hammer_throws/1/edit
  def edit
  end

  # POST /male_hammer_throws
  # POST /male_hammer_throws.json
  def create
    @male_hammer_throw = MaleHammerThrow.new(male_hammer_throw_params)

    respond_to do |format|
      if @male_hammer_throw.save
        format.html { redirect_to action:index, notice: 'Male hammer throw was successfully created.' }
        format.json { render :show, status: :created, location: @male_hammer_throw }
      else
        format.html { render :new }
        format.json { render json: @male_hammer_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_hammer_throws/1
  # PATCH/PUT /male_hammer_throws/1.json
  def update
    respond_to do |format|
      if @male_hammer_throw.update(male_hammer_throw_params)
        format.html { redirect_to @male_hammer_throw, notice: 'Male hammer throw was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_hammer_throw }
      else
        format.html { render :edit }
        format.json { render json: @male_hammer_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_hammer_throws/1
  # DELETE /male_hammer_throws/1.json
  def destroy
    @male_hammer_throw.destroy
    respond_to do |format|
      format.html { redirect_to male_hammer_throws_url, notice: 'Male hammer throw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_hammer_throw
      @male_hammer_throw = MaleHammerThrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_hammer_throw_params
      params.require(:male_hammer_throw).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
