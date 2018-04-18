class Femalesenior200mtsController < ApplicationController
  before_action :set_femalesenior200mt, only: [:show, :edit, :update, :destroy]

  # GET /femalesenior200mts
  # GET /femalesenior200mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Femalesenior200mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Femalesenior200mt.import(params[:file])
redirect_to femalesenior200mts_url, notice: "Importado correctamente"
end
  # GET /femalesenior200mts/1
  # GET /femalesenior200mts/1.json
  def show
  end

  # GET /femalesenior200mts/new
  def new
    @femalesenior200mt = Femalesenior200mt.new
  end

  # GET /femalesenior200mts/1/edit
  def edit
  end

  # POST /femalesenior200mts
  # POST /femalesenior200mts.json
  def create
    @femalesenior200mt = Femalesenior200mt.new(femalesenior200mt_params)

    respond_to do |format|
      if @femalesenior200mt.save
        format.html { redirect_to @femalesenior200mt, notice: 'Femalesenior200mt was successfully created.' }
        format.json { render :show, status: :created, location: @femalesenior200mt }
      else
        format.html { render :new }
        format.json { render json: @femalesenior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /femalesenior200mts/1
  # PATCH/PUT /femalesenior200mts/1.json
  def update
    respond_to do |format|
      if @femalesenior200mt.update(femalesenior200mt_params)
        format.html { redirect_to @femalesenior200mt, notice: 'Femalesenior200mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @femalesenior200mt }
      else
        format.html { render :edit }
        format.json { render json: @femalesenior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /femalesenior200mts/1
  # DELETE /femalesenior200mts/1.json
  def destroy
    @femalesenior200mt.destroy
    respond_to do |format|
      format.html { redirect_to femalesenior200mts_url, notice: 'Femalesenior200mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_femalesenior200mt
      @femalesenior200mt = Femalesenior200mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def femalesenior200mt_params
      params.require(:femalesenior200mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :femaleSenior200mts_id)
    end
end
