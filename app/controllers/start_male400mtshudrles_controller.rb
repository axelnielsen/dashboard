class StartMale400mtshudrlesController < ApplicationController
  before_action :set_start_male400mtshudrle, only: [:show, :edit, :update, :destroy]

  # GET /start_male400mtshudrles
  # GET /start_male400mtshudrles.json
 def index
     respond_to do |format|
                    @start_male400mtshudrle = StartMale400mtshudrle.new

     format.html
      format.json { render json: StartMale400mtshudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale400mtshudrle.import(params[:file])
redirect_to start_male400mtshudrles_url, notice: "Importado correctamente"
end

  # GET /start_male400mtshudrles/1
  # GET /start_male400mtshudrles/1.json
  def show
  end

  # GET /start_male400mtshudrles/new
  def new
    @start_male400mtshudrle = StartMale400mtshudrle.new
  end

  # GET /start_male400mtshudrles/1/edit
  def edit
  end

  # POST /start_male400mtshudrles
  # POST /start_male400mtshudrles.json
  def create
    @start_male400mtshudrle = StartMale400mtshudrle.new(start_male400mtshudrle_params)

    respond_to do |format|
      if @start_male400mtshudrle.save
        format.html { redirect_to action:index, notice: 'Start male400mtshudrle was successfully created.' }
        format.json { render :show, status: :created, location: @start_male400mtshudrle }
      else
        format.html { render :new }
        format.json { render json: @start_male400mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male400mtshudrles/1
  # PATCH/PUT /start_male400mtshudrles/1.json
  def update
    respond_to do |format|
      if @start_male400mtshudrle.update(start_male400mtshudrle_params)
        format.html { redirect_to @start_male400mtshudrle, notice: 'Start male400mtshudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male400mtshudrle }
      else
        format.html { render :edit }
        format.json { render json: @start_male400mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male400mtshudrles/1
  # DELETE /start_male400mtshudrles/1.json
  def destroy
    @start_male400mtshudrle.destroy
    respond_to do |format|
      format.html { redirect_to start_male400mtshudrles_url, notice: 'Start male400mtshudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male400mtshudrle
      @start_male400mtshudrle = StartMale400mtshudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male400mtshudrle_params
      params.require(:start_male400mtshudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male400mtshudrleStart_id)
    end
end
