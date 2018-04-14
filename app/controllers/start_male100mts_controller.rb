class StartMale100mtsController < ApplicationController
  before_action :set_start_male100mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male100mts
  # GET /start_male100mts.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: StartMale100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale100mt.import(params[:file])
redirect_to start_male100mts_url, notice: "Importado correctamente"
end

  # GET /start_male100mts/1
  # GET /start_male100mts/1.json
  def show
  end

  # GET /start_male100mts/new
  def new
    @start_male100mt = StartMale100mt.new
  end

  # GET /start_male100mts/1/edit
  def edit
  end

  # POST /start_male100mts
  # POST /start_male100mts.json
  def create
    @start_male100mt = StartMale100mt.new(start_male100mt_params)

    respond_to do |format|
      if @start_male100mt.save
        format.html { redirect_to @start_male100mt, notice: 'Start male100mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male100mt }
      else
        format.html { render :new }
        format.json { render json: @start_male100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male100mts/1
  # PATCH/PUT /start_male100mts/1.json
  def update
    respond_to do |format|
      if @start_male100mt.update(start_male100mt_params)
        format.html { redirect_to @start_male100mt, notice: 'Start male100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male100mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male100mts/1
  # DELETE /start_male100mts/1.json
  def destroy
    @start_male100mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male100mts_url, notice: 'Start male100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male100mt
      @start_male100mt = StartMale100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male100mt_params
      params.require(:start_male100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male100mtsHead_id)
    end
end
