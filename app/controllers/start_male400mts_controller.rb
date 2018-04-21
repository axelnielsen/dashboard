class StartMale400mtsController < ApplicationController
  before_action :set_start_male400mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male400mts
  # GET /start_male400mts.json
  def index
     respond_to do |format|
       @start_male400mt = StartMale400mt.new
     format.html
      format.json { render json: StartMale400mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale400mt.import(params[:file])
redirect_to start_male400mts_url, notice: "Importado correctamente"
end


  # GET /start_male400mts/1
  # GET /start_male400mts/1.json
  def show
  end

  # GET /start_male400mts/new
  def new
    @start_male400mt = StartMale400mt.new
  end

  # GET /start_male400mts/1/edit
  def edit
  end

  # POST /start_male400mts
  # POST /start_male400mts.json
  def create
    @start_male400mt = StartMale400mt.new(start_male400mt_params)

    respond_to do |format|
      if @start_male400mt.save
        format.html { redirect_to action:index, notice: 'Start male400mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male400mt }
      else
        format.html { render :new }
        format.json { render json: @start_male400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male400mts/1
  # PATCH/PUT /start_male400mts/1.json
  def update
    respond_to do |format|
      if @start_male400mt.update(start_male400mt_params)
        format.html { redirect_to @start_male400mt, notice: 'Start male400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male400mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male400mts/1
  # DELETE /start_male400mts/1.json
  def destroy
    @start_male400mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male400mts_url, notice: 'Start male400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male400mt
      @start_male400mt = StartMale400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male400mt_params
      params.require(:start_male400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male400mtsHead_id)
    end
end
