class StartFemale400mtshudrlesController < ApplicationController
  before_action :set_start_female400mtshudrle, only: [:show, :edit, :update, :destroy]

  # GET /start_female400mtshudrles
  # GET /start_female400mtshudrles.json
  def index
     respond_to do |format|
       @start_female400mtshudrle = StartFemale400mtshudrle.new
     format.html
      format.json { render json: StartFemale400mtshudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemale400mtshudrle.import(params[:file])
redirect_to start_female400mtshudrles_url, notice: "Importado correctamente"
end

  # GET /start_female400mtshudrles/1
  # GET /start_female400mtshudrles/1.json
  def show
  end

  # GET /start_female400mtshudrles/new
  def new
    @start_female400mtshudrle = StartFemale400mtshudrle.new
  end

  # GET /start_female400mtshudrles/1/edit
  def edit
  end

  # POST /start_female400mtshudrles
  # POST /start_female400mtshudrles.json
  def create
    @start_female400mtshudrle = StartFemale400mtshudrle.new(start_female400mtshudrle_params)

    respond_to do |format|
      if @start_female400mtshudrle.save
        format.html { redirect_to action:index, notice: 'Start female400mtshudrle was successfully created.' }
        format.json { render :show, status: :created, location: @start_female400mtshudrle }
      else
        format.html { render :new }
        format.json { render json: @start_female400mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female400mtshudrles/1
  # PATCH/PUT /start_female400mtshudrles/1.json
  def update
    respond_to do |format|
      if @start_female400mtshudrle.update(start_female400mtshudrle_params)
        format.html { redirect_to @start_female400mtshudrle, notice: 'Start female400mtshudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female400mtshudrle }
      else
        format.html { render :edit }
        format.json { render json: @start_female400mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female400mtshudrles/1
  # DELETE /start_female400mtshudrles/1.json
  def destroy
    @start_female400mtshudrle.destroy
    respond_to do |format|
      format.html { redirect_to start_female400mtshudrles_url, notice: 'Start female400mtshudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female400mtshudrle
      @start_female400mtshudrle = StartFemale400mtshudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female400mtshudrle_params
      params.require(:start_female400mtshudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female400mtshudrleStart_id)
    end
end
