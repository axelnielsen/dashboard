class Male10000mtsController < ApplicationController
  before_action :set_male10000mt, only: [:show, :edit, :update, :destroy]

  # GET /male10000mts
  # GET /male10000mts.json
     def index
     respond_to do |format|
     format.html
      format.json { render json: Male10000mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male10000mt.import(params[:file])
redirect_to male10000mts_url, notice: "Importado correctamente"
end

  # GET /male10000mts/1
  # GET /male10000mts/1.json
  def show
  end

  # GET /male10000mts/new
  def new
    @male10000mt = Male10000mt.new
  end

  # GET /male10000mts/1/edit
  def edit
  end

  # POST /male10000mts
  # POST /male10000mts.json
  def create
    @male10000mt = Male10000mt.new(male10000mt_params)

    respond_to do |format|
      if @male10000mt.save
        format.html { redirect_to @male10000mt, notice: 'Male10000mt was successfully created.' }
        format.json { render :show, status: :created, location: @male10000mt }
      else
        format.html { render :new }
        format.json { render json: @male10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male10000mts/1
  # PATCH/PUT /male10000mts/1.json
  def update
    respond_to do |format|
      if @male10000mt.update(male10000mt_params)
        format.html { redirect_to @male10000mt, notice: 'Male10000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male10000mt }
      else
        format.html { render :edit }
        format.json { render json: @male10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male10000mts/1
  # DELETE /male10000mts/1.json
  def destroy
    @male10000mt.destroy
    respond_to do |format|
      format.html { redirect_to male10000mts_url, notice: 'Male10000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male10000mt
      @male10000mt = Male10000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male10000mt_params
      params.require(:male10000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male10000mtHead_id)
    end
end
