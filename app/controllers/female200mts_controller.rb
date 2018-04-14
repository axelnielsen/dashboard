class Female200mtsController < ApplicationController
  before_action :set_female200mt, only: [:show, :edit, :update, :destroy]

  # GET /female200mts
  # GET /female200mts.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: Female200mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female200mt.import(params[:file])
redirect_to female200mts_url, notice: "Importado correctamente"
end
  # GET /female200mts/1
  # GET /female200mts/1.json
  def show
  end

  # GET /female200mts/new
  def new
    @female200mt = Female200mt.new
  end

  # GET /female200mts/1/edit
  def edit
  end

  # POST /female200mts
  # POST /female200mts.json
  def create
    @female200mt = Female200mt.new(female200mt_params)

    respond_to do |format|
      if @female200mt.save
        format.html { redirect_to @female200mt, notice: 'Female200mt was successfully created.' }
        format.json { render :show, status: :created, location: @female200mt }
      else
        format.html { render :new }
        format.json { render json: @female200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female200mts/1
  # PATCH/PUT /female200mts/1.json
  def update
    respond_to do |format|
      if @female200mt.update(female200mt_params)
        format.html { redirect_to @female200mt, notice: 'Female200mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female200mt }
      else
        format.html { render :edit }
        format.json { render json: @female200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female200mts/1
  # DELETE /female200mts/1.json
  def destroy
    @female200mt.destroy
    respond_to do |format|
      format.html { redirect_to female200mts_url, notice: 'Female200mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female200mt
      @female200mt = Female200mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female200mt_params
      params.require(:female200mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female200mtsHead_id)
    end
end
