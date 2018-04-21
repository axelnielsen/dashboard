class Female1500mtsController < ApplicationController
  before_action :set_female1500mt, only: [:show, :edit, :update, :destroy]

  # GET /female1500mts
  # GET /female1500mts.json
 def index
     respond_to do |format|
       @female1500mt = Female1500mt.new
     format.html
      format.json { render json: Female1500mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female1500mt.import(params[:file])
redirect_to start_female1500mts_url, notice: "Importado correctamente"
end

  # GET /female1500mts/1
  # GET /female1500mts/1.json
  def show
  end

  # GET /female1500mts/new
  def new
    @female1500mt = Female1500mt.new
  end

  # GET /female1500mts/1/edit
  def edit
  end

  # POST /female1500mts
  # POST /female1500mts.json
  def create
    @female1500mt = Female1500mt.new(female1500mt_params)

    respond_to do |format|
      if @female1500mt.save
        format.html { redirect_to action:index, notice: 'Female1500mt was successfully created.' }
        format.json { render :show, status: :created, location: @female1500mt }
      else
        format.html { render :new }
        format.json { render json: @female1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female1500mts/1
  # PATCH/PUT /female1500mts/1.json
  def update
    respond_to do |format|
      if @female1500mt.update(female1500mt_params)
        format.html { redirect_to @female1500mt, notice: 'Female1500mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female1500mt }
      else
        format.html { render :edit }
        format.json { render json: @female1500mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female1500mts/1
  # DELETE /female1500mts/1.json
  def destroy
    @female1500mt.destroy
    respond_to do |format|
      format.html { redirect_to female1500mts_url, notice: 'Female1500mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female1500mt
      @female1500mt = Female1500mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female1500mt_params
      params.require(:female1500mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female1500mtsHead_id)
    end
end
