class Male8x50mtsController < ApplicationController
  before_action :set_male8x50mt, only: [:show, :edit, :update, :destroy]

  # GET /male8x50mts
  # GET /male8x50mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Male8x50mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male8x50mt.import(params[:file])
redirect_to male8x50mts_url, notice: "Importado correctamente"
end
  # GET /male8x50mts/1
  # GET /male8x50mts/1.json
  def show
  end

  # GET /male8x50mts/new
  def new
    @male8x50mt = Male8x50mt.new
  end

  # GET /male8x50mts/1/edit
  def edit
  end

  # POST /male8x50mts
  # POST /male8x50mts.json
  def create
    @male8x50mt = Male8x50mt.new(male8x50mt_params)

    respond_to do |format|
      if @male8x50mt.save
        format.html { redirect_to @male8x50mt, notice: 'Male8x50mt was successfully created.' }
        format.json { render :show, status: :created, location: @male8x50mt }
      else
        format.html { render :new }
        format.json { render json: @male8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male8x50mts/1
  # PATCH/PUT /male8x50mts/1.json
  def update
    respond_to do |format|
      if @male8x50mt.update(male8x50mt_params)
        format.html { redirect_to @male8x50mt, notice: 'Male8x50mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male8x50mt }
      else
        format.html { render :edit }
        format.json { render json: @male8x50mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male8x50mts/1
  # DELETE /male8x50mts/1.json
  def destroy
    @male8x50mt.destroy
    respond_to do |format|
      format.html { redirect_to male8x50mts_url, notice: 'Male8x50mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male8x50mt
      @male8x50mt = Male8x50mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male8x50mt_params
      params.require(:male8x50mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male8x50mts_id)
    end
end
