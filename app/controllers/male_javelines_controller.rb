class MaleJavelinesController < ApplicationController
  before_action :set_male_javeline, only: [:show, :edit, :update, :destroy]

  # GET /male_javelines
  # GET /male_javelines.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: MaleJavelinesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleJaveline.import(params[:file])
redirect_to start_male_javelines_url, notice: "Importado correctamente"
end

  # GET /male_javelines/1
  # GET /male_javelines/1.json
  def show
  end

  # GET /male_javelines/new
  def new
    @male_javeline = MaleJaveline.new
  end

  # GET /male_javelines/1/edit
  def edit
  end

  # POST /male_javelines
  # POST /male_javelines.json
  def create
    @male_javeline = MaleJaveline.new(male_javeline_params)

    respond_to do |format|
      if @male_javeline.save
        format.html { redirect_to @male_javeline, notice: 'Male javeline was successfully created.' }
        format.json { render :show, status: :created, location: @male_javeline }
      else
        format.html { render :new }
        format.json { render json: @male_javeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_javelines/1
  # PATCH/PUT /male_javelines/1.json
  def update
    respond_to do |format|
      if @male_javeline.update(male_javeline_params)
        format.html { redirect_to @male_javeline, notice: 'Male javeline was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_javeline }
      else
        format.html { render :edit }
        format.json { render json: @male_javeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_javelines/1
  # DELETE /male_javelines/1.json
  def destroy
    @male_javeline.destroy
    respond_to do |format|
      format.html { redirect_to male_javelines_url, notice: 'Male javeline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_javeline
      @male_javeline = MaleJaveline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_javeline_params
      params.require(:male_javeline).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
