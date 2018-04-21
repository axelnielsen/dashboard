class Malesenior200mtsController < ApplicationController
  before_action :set_malesenior200mt, only: [:show, :edit, :update, :destroy]

  # GET /malesenior200mts
  # GET /malesenior200mts.json
   def index
     respond_to do |format|
       @malesenior200mt = Malesenior200mt.new
     format.html
      format.json { render json: Malesenior200mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Malesenior200mt.import(params[:file])
redirect_to malesenior200mts_url, notice: "Importado correctamente"
end
  # GET /malesenior200mts/1
  # GET /malesenior200mts/1.json
  def show
  end

  # GET /malesenior200mts/new
  def new
    @malesenior200mt = Malesenior200mt.new
  end

  # GET /malesenior200mts/1/edit
  def edit
  end

  # POST /malesenior200mts
  # POST /malesenior200mts.json
  def create
    @malesenior200mt = Malesenior200mt.new(malesenior200mt_params)

    respond_to do |format|
      if @malesenior200mt.save
        format.html { redirect_to action:index, notice: 'Malesenior200mt was successfully created.' }
        format.json { render :show, status: :created, location: @malesenior200mt }
      else
        format.html { render :new }
        format.json { render json: @malesenior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malesenior200mts/1
  # PATCH/PUT /malesenior200mts/1.json
  def update
    respond_to do |format|
      if @malesenior200mt.update(malesenior200mt_params)
        format.html { redirect_to @malesenior200mt, notice: 'Malesenior200mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @malesenior200mt }
      else
        format.html { render :edit }
        format.json { render json: @malesenior200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malesenior200mts/1
  # DELETE /malesenior200mts/1.json
  def destroy
    @malesenior200mt.destroy
    respond_to do |format|
      format.html { redirect_to malesenior200mts_url, notice: 'Malesenior200mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malesenior200mt
      @malesenior200mt = Malesenior200mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malesenior200mt_params
      params.require(:malesenior200mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :maleSenior200mts_id)
    end
end
