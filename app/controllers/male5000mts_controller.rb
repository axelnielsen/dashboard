class Male5000mtsController < ApplicationController
  before_action :set_male5000mt, only: [:show, :edit, :update, :destroy]

  # GET /male5000mts
  # GET /male5000mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Male5000mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male5000mt.import(params[:file])
redirect_to male5000mts_url, notice: "Importado correctamente"
end

  # GET /male5000mts/1
  # GET /male5000mts/1.json
  def show
  end

  # GET /male5000mts/new
  def new
    @male5000mt = Male5000mt.new
  end

  # GET /male5000mts/1/edit
  def edit
  end

  # POST /male5000mts
  # POST /male5000mts.json
  def create
    @male5000mt = Male5000mt.new(male5000mt_params)

    respond_to do |format|
      if @male5000mt.save
        format.html { redirect_to @male5000mt, notice: 'Male5000mt was successfully created.' }
        format.json { render :show, status: :created, location: @male5000mt }
      else
        format.html { render :new }
        format.json { render json: @male5000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male5000mts/1
  # PATCH/PUT /male5000mts/1.json
  def update
    respond_to do |format|
      if @male5000mt.update(male5000mt_params)
        format.html { redirect_to @male5000mt, notice: 'Male5000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male5000mt }
      else
        format.html { render :edit }
        format.json { render json: @male5000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male5000mts/1
  # DELETE /male5000mts/1.json
  def destroy
    @male5000mt.destroy
    respond_to do |format|
      format.html { redirect_to male5000mts_url, notice: 'Male5000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male5000mt
      @male5000mt = Male5000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male5000mt_params
      params.require(:male5000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male5000mtsHead_id)
    end
end
