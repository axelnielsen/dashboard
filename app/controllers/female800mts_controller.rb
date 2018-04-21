class Female800mtsController < ApplicationController
  before_action :set_female800mt, only: [:show, :edit, :update, :destroy]

  # GET /female800mts
  # GET /female800mts.json
       def index
     respond_to do |format|
      @female800mt = Female800mt.new
     format.html
      format.json { render json: Female800mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female800mt.import(params[:file])
redirect_to female800mts_url, notice: "Importado correctamente"
end

  # GET /female800mts/1
  # GET /female800mts/1.json
  def show
  end

  # GET /female800mts/new
  def new
    @female800mt = Female800mt.new
  end

  # GET /female800mts/1/edit
  def edit
  end

  # POST /female800mts
  # POST /female800mts.json
  def create
    @female800mt = Female800mt.new(female800mt_params)

    respond_to do |format|
      if @female800mt.save
        format.html { redirect_to action:index, notice: 'Female800mt was successfully created.' }
        format.json { render :show, status: :created, location: @female800mt }
      else
        format.html { render :new }
        format.json { render json: @female800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female800mts/1
  # PATCH/PUT /female800mts/1.json
  def update
    respond_to do |format|
      if @female800mt.update(female800mt_params)
        format.html { redirect_to @female800mt, notice: 'Female800mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female800mt }
      else
        format.html { render :edit }
        format.json { render json: @female800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female800mts/1
  # DELETE /female800mts/1.json
  def destroy
    @female800mt.destroy
    respond_to do |format|
      format.html { redirect_to female800mts_url, notice: 'Female800mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female800mt
      @female800mt = Female800mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female800mt_params
      params.require(:female800mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female800mtHead_id)
    end
end
