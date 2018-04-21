class Male4x100mtsController < ApplicationController
  before_action :set_male4x100mt, only: [:show, :edit, :update, :destroy]

  # GET /male4x100mts
  # GET /male4x100mts.json
    def index
     respond_to do |format|
       @male4x100mt = Male4x100mt.new
     format.html
      format.json { render json: Male4x100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male4x100mt.import(params[:file])
redirect_to male4x100mts_url, notice: "Importado correctamente"
end
  # GET /male4x100mts/1
  # GET /male4x100mts/1.json
  def show
  end

  # GET /male4x100mts/new
  def new
    @male4x100mt = Male4x100mt.new
  end

  # GET /male4x100mts/1/edit
  def edit
  end

  # POST /male4x100mts
  # POST /male4x100mts.json
  def create
    @male4x100mt = Male4x100mt.new(male4x100mt_params)

    respond_to do |format|
      if @male4x100mt.save
        format.html { redirect_to action:index, notice: 'Male4x100mt was successfully created.' }
        format.json { render :show, status: :created, location: @male4x100mt }
      else
        format.html { render :new }
        format.json { render json: @male4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male4x100mts/1
  # PATCH/PUT /male4x100mts/1.json
  def update
    respond_to do |format|
      if @male4x100mt.update(male4x100mt_params)
        format.html { redirect_to @male4x100mt, notice: 'Male4x100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male4x100mt }
      else
        format.html { render :edit }
        format.json { render json: @male4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male4x100mts/1
  # DELETE /male4x100mts/1.json
  def destroy
    @male4x100mt.destroy
    respond_to do |format|
      format.html { redirect_to male4x100mts_url, notice: 'Male4x100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male4x100mt
      @male4x100mt = Male4x100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male4x100mt_params
      params.require(:male4x100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male4x100mts_id)
    end
end
