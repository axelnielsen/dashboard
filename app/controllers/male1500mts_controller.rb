class Male1500mtsController < ApplicationController
  before_action :set_male1500mt, only: [:show, :edit, :update, :destroy]

  # GET /male1500mts
  # GET /male1500mts.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: Male1500mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male1500mt.import(params[:file])
redirect_to start_male1500mts_url, notice: "Importado correctamente"
end

  # GET /male1500mts/1
  # GET /male1500mts/1.json
  def show
  end

  # GET /male1500mts/new
  def new
    @male1500mt = Male1500mt.new
  end

  # GET /male1500mts/1/edit
  def edit
  end

  # POST /male1500mts
  # POST /male1500mts.json
  def create
    @male1500mt = Male1500mt.new(male1500mt_params)

    respond_to do |format|
      if @male1500mt.save
        format.html { redirect_to @male1500mt, notice: 'Male1500mt was successfully created.' }
        format.json { render :show, status: :created, location: @male1500mt }
      else
        format.html { render :new }
        format.json { render json: @male1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male1500mts/1
  # PATCH/PUT /male1500mts/1.json
  def update
    respond_to do |format|
      if @male1500mt.update(male1500mt_params)
        format.html { redirect_to @male1500mt, notice: 'Male1500mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male1500mt }
      else
        format.html { render :edit }
        format.json { render json: @male1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male1500mts/1
  # DELETE /male1500mts/1.json
  def destroy
    @male1500mt.destroy
    respond_to do |format|
      format.html { redirect_to male1500mts_url, notice: 'Male1500mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male1500mt
      @male1500mt = Male1500mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male1500mt_params
      params.require(:male1500mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male1500mtsHead_id)
    end
end
