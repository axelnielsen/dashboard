class Male200mtsController < ApplicationController
  before_action :set_male200mt, only: [:show, :edit, :update, :destroy]

  # GET /male200mts
  # GET /male200mts.json
  def index
     respond_to do |format|
        @male200mt = Male200mt.new
     format.html
      format.json { render json:  Male200mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male200mt.import(params[:file])
redirect_to male200mts_url, notice: "Importado correctamente"
end



  # GET /male200mts/1
  # GET /male200mts/1.json
  def show
  end

  # GET /male200mts/new
  def new
    @male200mt = Male200mt.new
  end

  # GET /male200mts/1/edit
  def edit
  end

  # POST /male200mts
  # POST /male200mts.json
  def create
    @male200mt = Male200mt.new(male200mt_params)

    respond_to do |format|
      if @male200mt.save
        format.html { redirect_to action:index, notice: 'Male200mt was successfully created.' }
        format.json { render :show, status: :created, location: @male200mt }
      else
        format.html { render :new }
        format.json { render json: @male200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male200mts/1
  # PATCH/PUT /male200mts/1.json
  def update
    respond_to do |format|
      if @male200mt.update(male200mt_params)
        format.html { redirect_to @male200mt, notice: 'Male200mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male200mt }
      else
        format.html { render :edit }
        format.json { render json: @male200mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male200mts/1
  # DELETE /male200mts/1.json
  def destroy
    @male200mt.destroy
    respond_to do |format|
      format.html { redirect_to male200mts_url, notice: 'Male200mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male200mt
      @male200mt = Male200mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male200mt_params
      params.require(:male200mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male200mtsHead_id)
    end
end
