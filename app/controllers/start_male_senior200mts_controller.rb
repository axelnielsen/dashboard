class StartMaleSenior200mtsController < ApplicationController
  before_action :set_start_male_senior200mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male_senior200mts
  # GET /start_male_senior200mts.json
         def index
     respond_to do |format|
        @start_male_senior200mt = StartMaleSenior200mt.new
     format.html
      format.json { render json: StartMaleSenior200mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMaleSenior200mt.import(params[:file])
redirect_to start_male_senior200mts_url, notice: "Importado correctamente"
end
  # GET /start_male_senior200mts/1
  # GET /start_male_senior200mts/1.json
  def show
  end

  # GET /start_male_senior200mts/new
  def new
    @start_male_senior200mt = StartMaleSenior200mt.new
  end

  # GET /start_male_senior200mts/1/edit
  def edit
  end

  # POST /start_male_senior200mts
  # POST /start_male_senior200mts.json
  def create
    @start_male_senior200mt = StartMaleSenior200mt.new(start_male_senior200mt_params)

    respond_to do |format|
      if @start_male_senior200mt.save
        format.html { redirect_to action:index, notice: 'Start male senior200mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_senior200mt }
      else
        format.html { render :new }
        format.json { render json: @start_male_senior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_senior200mts/1
  # PATCH/PUT /start_male_senior200mts/1.json
  def update
    respond_to do |format|
      if @start_male_senior200mt.update(start_male_senior200mt_params)
        format.html { redirect_to @start_male_senior200mt, notice: 'Start male senior200mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_senior200mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male_senior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_senior200mts/1
  # DELETE /start_male_senior200mts/1.json
  def destroy
    @start_male_senior200mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male_senior200mts_url, notice: 'Start male senior200mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_senior200mt
      @start_male_senior200mt = StartMaleSenior200mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_senior200mt_params
      params.require(:start_male_senior200mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :malesenior200mtStart_id)
    end
end
