class Male110mtshudrlesController < ApplicationController
  before_action :set_male110mtshudrle, only: [:show, :edit, :update, :destroy]

  # GET /male110mtshudrles
  # GET /male110mtshudrles.json
     def index
     respond_to do |format|
     format.html
      format.json { render json: Male110mtshudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male110mtshudrle.import(params[:file])
redirect_to male110mtshudrles_url, notice: "Importado correctamente"
end

  # GET /male110mtshudrles/1
  # GET /male110mtshudrles/1.json
  def show
  end

  # GET /male110mtshudrles/new
  def new
    @male110mtshudrle = Male110mtshudrle.new
  end

  # GET /male110mtshudrles/1/edit
  def edit
  end

  # POST /male110mtshudrles
  # POST /male110mtshudrles.json
  def create
    @male110mtshudrle = Male110mtshudrle.new(male110mtshudrle_params)

    respond_to do |format|
      if @male110mtshudrle.save
        format.html { redirect_to @male110mtshudrle, notice: 'Male110mtshudrle was successfully created.' }
        format.json { render :show, status: :created, location: @male110mtshudrle }
      else
        format.html { render :new }
        format.json { render json: @male110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male110mtshudrles/1
  # PATCH/PUT /male110mtshudrles/1.json
  def update
    respond_to do |format|
      if @male110mtshudrle.update(male110mtshudrle_params)
        format.html { redirect_to @male110mtshudrle, notice: 'Male110mtshudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @male110mtshudrle }
      else
        format.html { render :edit }
        format.json { render json: @male110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male110mtshudrles/1
  # DELETE /male110mtshudrles/1.json
  def destroy
    @male110mtshudrle.destroy
    respond_to do |format|
      format.html { redirect_to male110mtshudrles_url, notice: 'Male110mtshudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male110mtshudrle
      @male110mtshudrle = Male110mtshudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male110mtshudrle_params
      params.require(:male110mtshudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male110mtshudrleHead_id)
    end
end
