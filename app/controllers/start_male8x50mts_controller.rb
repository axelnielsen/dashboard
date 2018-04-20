class StartMale8x50mtsController < ApplicationController
  before_action :set_start_male8x50mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male8x50mts
  # GET /start_male8x50mts.json
    def index
     respond_to do |format|
     format.html
      format.json { render json: StartMale8x50mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale8x50mt.import(params[:file])
redirect_to start_male8x50mts_url, notice: "Importado correctamente"
end

  # GET /start_male8x50mts/1
  # GET /start_male8x50mts/1.json
  def show
  end

  # GET /start_male8x50mts/new
  def new
    @start_male8x50mt = StartMale8x50mt.new
  end

  # GET /start_male8x50mts/1/edit
  def edit
  end

  # POST /start_male8x50mts
  # POST /start_male8x50mts.json
  def create
    @start_male8x50mt = StartMale8x50mt.new(start_male8x50mt_params)

    respond_to do |format|
      if @start_male8x50mt.save
        format.html { redirect_to @start_male8x50mt, notice: 'Start male8x50mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male8x50mt }
      else
        format.html { render :new }
        format.json { render json: @start_male8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male8x50mts/1
  # PATCH/PUT /start_male8x50mts/1.json
  def update
    respond_to do |format|
      if @start_male8x50mt.update(start_male8x50mt_params)
        format.html { redirect_to @start_male8x50mt, notice: 'Start male8x50mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male8x50mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male8x50mts/1
  # DELETE /start_male8x50mts/1.json
  def destroy
    @start_male8x50mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male8x50mts_url, notice: 'Start male8x50mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male8x50mt
      @start_male8x50mt = StartMale8x50mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male8x50mt_params
      params.require(:start_male8x50mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male8x50mtStart_id)
    end
end
