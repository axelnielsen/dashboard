class Male400mtsController < ApplicationController
  before_action :set_male400mt, only: [:show, :edit, :update, :destroy]

  # GET /male400mts
  # GET /male400mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Male400mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male400mt.import(params[:file])
redirect_to male400mts_url, notice: "Importado correctamente"
end


  # GET /male400mts/1
  # GET /male400mts/1.json
  def show
  end

  # GET /male400mts/new
  def new
    @male400mt = Male400mt.new
  end

  # GET /male400mts/1/edit
  def edit
  end

  # POST /male400mts
  # POST /male400mts.json
  def create
    @male400mt = Male400mt.new(male400mt_params)

    respond_to do |format|
      if @male400mt.save
        format.html { redirect_to @male400mt, notice: 'Male400mt was successfully created.' }
        format.json { render :show, status: :created, location: @male400mt }
      else
        format.html { render :new }
        format.json { render json: @male400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male400mts/1
  # PATCH/PUT /male400mts/1.json
  def update
    respond_to do |format|
      if @male400mt.update(male400mt_params)
        format.html { redirect_to @male400mt, notice: 'Male400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male400mt }
      else
        format.html { render :edit }
        format.json { render json: @male400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male400mts/1
  # DELETE /male400mts/1.json
  def destroy
    @male400mt.destroy
    respond_to do |format|
      format.html { redirect_to male400mts_url, notice: 'Male400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male400mt
      @male400mt = Male400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male400mt_params
      params.require(:male400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male400mtsHead_id)
    end
end
