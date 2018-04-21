class StartFemale110mtshudrlesController < ApplicationController
  before_action :set_start_female110mtshudrle, only: [:show, :edit, :update, :destroy]

  # GET /start_female110mtshudrles
  # GET /start_female110mtshudrles.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: StartFemale110mtshudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

  # GET /start_female110mtshudrles/1
  # GET /start_female110mtshudrles/1.json
  def show
  end

  # GET /start_female110mtshudrles/new
  def new
    @start_female110mtshudrle = StartFemale110mtshudrle.new
  end

  # GET /start_female110mtshudrles/1/edit
  def edit
  end

  # POST /start_female110mtshudrles
  # POST /start_female110mtshudrles.json
  def create
    @start_female110mtshudrle = StartFemale110mtshudrle.new(start_female110mtshudrle_params)

    respond_to do |format|
      if @start_female110mtshudrle.save
        format.html { redirect_to @start_female110mtshudrle, notice: 'Start female110mtshudrle was successfully created.' }
        format.json { render :show, status: :created, location: @start_female110mtshudrle }
      else
        format.html { render :new }
        format.json { render json: @start_female110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female110mtshudrles/1
  # PATCH/PUT /start_female110mtshudrles/1.json
  def update
    respond_to do |format|
      if @start_female110mtshudrle.update(start_female110mtshudrle_params)
        format.html { redirect_to @start_female110mtshudrle, notice: 'Start female110mtshudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female110mtshudrle }
      else
        format.html { render :edit }
        format.json { render json: @start_female110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female110mtshudrles/1
  # DELETE /start_female110mtshudrles/1.json
  def destroy
    @start_female110mtshudrle.destroy
    respond_to do |format|
      format.html { redirect_to start_female110mtshudrles_url, notice: 'Start female110mtshudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female110mtshudrle
      @start_female110mtshudrle = StartFemale110mtshudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female110mtshudrle_params
      params.require(:start_female110mtshudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female110mtshudrleStart_id)
    end
end
