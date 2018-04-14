class Male100mtsController < ApplicationController
  before_action :set_male100mt, only: [:show, :edit, :update, :destroy]

  # GET /male100mts
  # GET /male100mts.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: Male100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male100mt.import(params[:file])
redirect_to start_male100mts_url, notice: "Importado correctamente"
end

  # GET /male100mts/1
  # GET /male100mts/1.json
  def show
  end

  # GET /male100mts/new
  def new
    @male100mt = Male100mt.new
  end

  # GET /male100mts/1/edit
  def edit
  end

  # POST /male100mts
  # POST /male100mts.json
  def create
    @male100mt = Male100mt.new(male100mt_params)

    respond_to do |format|
      if @male100mt.save
        format.html { redirect_to @male100mt, notice: 'Male100mt was successfully created.' }
        format.json { render :show, status: :created, location: @male100mt }
      else
        format.html { render :new }
        format.json { render json: @male100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male100mts/1
  # PATCH/PUT /male100mts/1.json
  def update
    respond_to do |format|
      if @male100mt.update(male100mt_params)
        format.html { redirect_to @male100mt, notice: 'Male100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male100mt }
      else
        format.html { render :edit }
        format.json { render json: @male100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male100mts/1
  # DELETE /male100mts/1.json
  def destroy
    @male100mt.destroy
    respond_to do |format|
      format.html { redirect_to male100mts_url, notice: 'Male100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male100mt
      @male100mt = Male100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male100mt_params
      params.require(:male100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male100mtsHead_id)
    end
end
