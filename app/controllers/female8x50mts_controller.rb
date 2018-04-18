class Female8x50mtsController < ApplicationController
  before_action :set_female8x50mt, only: [:show, :edit, :update, :destroy]

  # GET /female8x50mts
  # GET /female8x50mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Female8x50mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female8x50mt.import(params[:file])
redirect_to female8x50mts_url, notice: "Importado correctamente"
end
  # GET /female8x50mts/1
  # GET /female8x50mts/1.json
  def show
  end

  # GET /female8x50mts/new
  def new
    @female8x50mt = Female8x50mt.new
  end

  # GET /female8x50mts/1/edit
  def edit
  end

  # POST /female8x50mts
  # POST /female8x50mts.json
  def create
    @female8x50mt = Female8x50mt.new(female8x50mt_params)

    respond_to do |format|
      if @female8x50mt.save
        format.html { redirect_to @female8x50mt, notice: 'Female8x50mt was successfully created.' }
        format.json { render :show, status: :created, location: @female8x50mt }
      else
        format.html { render :new }
        format.json { render json: @female8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female8x50mts/1
  # PATCH/PUT /female8x50mts/1.json
  def update
    respond_to do |format|
      if @female8x50mt.update(female8x50mt_params)
        format.html { redirect_to @female8x50mt, notice: 'Female8x50mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female8x50mt }
      else
        format.html { render :edit }
        format.json { render json: @female8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female8x50mts/1
  # DELETE /female8x50mts/1.json
  def destroy
    @female8x50mt.destroy
    respond_to do |format|
      format.html { redirect_to female8x50mts_url, notice: 'Female8x50mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female8x50mt
      @female8x50mt = Female8x50mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female8x50mt_params
      params.require(:female8x50mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female8x50mts_id)
    end
end
