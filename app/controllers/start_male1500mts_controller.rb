class StartMale1500mtsController < ApplicationController
  before_action :set_start_male1500mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male1500mts
  # GET /start_male1500mts.json
 def index
     respond_to do |format|
       @start_male1500mt = StartMale1500mt.new
     format.html
      format.json { render json: StartMale1500mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale1500mt.import(params[:file])
redirect_to start_male1500mts_url, notice: "Importado correctamente"
end

  # GET /start_male1500mts/1
  # GET /start_male1500mts/1.json
  def show
  end

  # GET /start_male1500mts/new
  def new
    @start_male1500mt = StartMale1500mt.new
  end

  # GET /start_male1500mts/1/edit
  def edit
  end

  # POST /start_male1500mts
  # POST /start_male1500mts.json
  def create
    @start_male1500mt = StartMale1500mt.new(start_male1500mt_params)

    respond_to do |format|
      if @start_male1500mt.save
        format.html { redirect_to action:index, notice: 'Start male1500mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male1500mt }
      else
        format.html { render :new }
        format.json { render json: @start_male1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male1500mts/1
  # PATCH/PUT /start_male1500mts/1.json
  def update
    respond_to do |format|
      if @start_male1500mt.update(start_male1500mt_params)
        format.html { redirect_to @start_male1500mt, notice: 'Start male1500mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male1500mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male1500mts/1
  # DELETE /start_male1500mts/1.json
  def destroy
    @start_male1500mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male1500mts_url, notice: 'Start male1500mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male1500mt
      @start_male1500mt = StartMale1500mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male1500mt_params
      params.require(:start_male1500mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male1500mtsHead_id)
    end
end
