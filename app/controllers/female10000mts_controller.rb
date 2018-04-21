class Female10000mtsController < ApplicationController
  before_action :set_female10000mt, only: [:show, :edit, :update, :destroy]

  # GET /female10000mts
  # GET /female10000mts.json
      def index
     respond_to do |format|
     format.html
      format.json { render json: Female10000mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female10000mt.import(params[:file])
redirect_to female10000mts_url, notice: "Importado correctamente"
end
  # GET /female10000mts/1
  # GET /female10000mts/1.json
  def show
  end

  # GET /female10000mts/new
  def new
    @female10000mt = Female10000mt.new
  end

  # GET /female10000mts/1/edit
  def edit
  end

  # POST /female10000mts
  # POST /female10000mts.json
  def create
    @female10000mt = Female10000mt.new(female10000mt_params)

    respond_to do |format|
      if @female10000mt.save
        format.html { redirect_to @female10000mt, notice: 'Female10000mt was successfully created.' }
        format.json { render :show, status: :created, location: @female10000mt }
      else
        format.html { render :new }
        format.json { render json: @female10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female10000mts/1
  # PATCH/PUT /female10000mts/1.json
  def update
    respond_to do |format|
      if @female10000mt.update(female10000mt_params)
        format.html { redirect_to @female10000mt, notice: 'Female10000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female10000mt }
      else
        format.html { render :edit }
        format.json { render json: @female10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female10000mts/1
  # DELETE /female10000mts/1.json
  def destroy
    @female10000mt.destroy
    respond_to do |format|
      format.html { redirect_to female10000mts_url, notice: 'Female10000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female10000mt
      @female10000mt = Female10000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female10000mt_params
      params.require(:female10000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female10000mtHead_id)
    end
end
