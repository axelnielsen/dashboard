class StartFemale4x100mtsController < ApplicationController
  before_action :set_start_female4x100mt, only: [:show, :edit, :update, :destroy]

  # GET /start_female4x100mts
  # GET /start_female4x100mts.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: StartFemale4x100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemale4x100mt.import(params[:file])
redirect_to start_female4x100mts_url, notice: "Importado correctamente"
end

  # GET /start_female4x100mts/1
  # GET /start_female4x100mts/1.json
  def show
  end

  # GET /start_female4x100mts/new
  def new
    @start_female4x100mt = StartFemale4x100mt.new
  end

  # GET /start_female4x100mts/1/edit
  def edit
  end

  # POST /start_female4x100mts
  # POST /start_female4x100mts.json
  def create
    @start_female4x100mt = StartFemale4x100mt.new(start_female4x100mt_params)

    respond_to do |format|
      if @start_female4x100mt.save
        format.html { redirect_to @start_female4x100mt, notice: 'Start female4x100mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_female4x100mt }
      else
        format.html { render :new }
        format.json { render json: @start_female4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female4x100mts/1
  # PATCH/PUT /start_female4x100mts/1.json
  def update
    respond_to do |format|
      if @start_female4x100mt.update(start_female4x100mt_params)
        format.html { redirect_to @start_female4x100mt, notice: 'Start female4x100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female4x100mt }
      else
        format.html { render :edit }
        format.json { render json: @start_female4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female4x100mts/1
  # DELETE /start_female4x100mts/1.json
  def destroy
    @start_female4x100mt.destroy
    respond_to do |format|
      format.html { redirect_to start_female4x100mts_url, notice: 'Start female4x100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female4x100mt
      @start_female4x100mt = StartFemale4x100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female4x100mt_params
      params.require(:start_female4x100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female4x100mtStart_id)
    end
end
