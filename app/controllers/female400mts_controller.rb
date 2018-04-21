class Female400mtsController < ApplicationController
  before_action :set_female400mt, only: [:show, :edit, :update, :destroy]

  # GET /female400mts
  # GET /female400mts.json
   def index
     respond_to do |format|
        @female400mt = Female400mt.new
     format.html
      format.json { render json: Female400mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female400mt.import(params[:file])
redirect_to female400mts_url, notice: "Importado correctamente"
end
  # GET /female400mts/1
  # GET /female400mts/1.json
  def show
  end

  # GET /female400mts/new
  def new
    @female400mt = Female400mt.new
  end

  # GET /female400mts/1/edit
  def edit
  end

  # POST /female400mts
  # POST /female400mts.json
  def create
    @female400mt = Female400mt.new(female400mt_params)

    respond_to do |format|
      if @female400mt.save
        format.html { redirect_to action:index, notice: 'Female400mt was successfully created.' }
        format.json { render :show, status: :created, location: @female400mt }
      else
        format.html { render :new }
        format.json { render json: @female400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female400mts/1
  # PATCH/PUT /female400mts/1.json
  def update
    respond_to do |format|
      if @female400mt.update(female400mt_params)
        format.html { redirect_to @female400mt, notice: 'Female400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female400mt }
      else
        format.html { render :edit }
        format.json { render json: @female400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female400mts/1
  # DELETE /female400mts/1.json
  def destroy
    @female400mt.destroy
    respond_to do |format|
      format.html { redirect_to female400mts_url, notice: 'Female400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female400mt
      @female400mt = Female400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female400mt_params
      params.require(:female400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female400mtsHead_id)
    end
end
