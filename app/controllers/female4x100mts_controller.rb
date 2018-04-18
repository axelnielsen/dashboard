class Female4x100mtsController < ApplicationController
  before_action :set_female4x100mt, only: [:show, :edit, :update, :destroy]

  # GET /female4x100mts
  # GET /female4x100mts.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Female4x100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female4x100mt.import(params[:file])
redirect_to female4x100mts_url, notice: "Importado correctamente"
end
  # GET /female4x100mts/1
  # GET /female4x100mts/1.json
  def show
  end

  # GET /female4x100mts/new
  def new
    @female4x100mt = Female4x100mt.new
  end

  # GET /female4x100mts/1/edit
  def edit
  end

  # POST /female4x100mts
  # POST /female4x100mts.json
  def create
    @female4x100mt = Female4x100mt.new(female4x100mt_params)

    respond_to do |format|
      if @female4x100mt.save
        format.html { redirect_to @female4x100mt, notice: 'Female4x100mt was successfully created.' }
        format.json { render :show, status: :created, location: @female4x100mt }
      else
        format.html { render :new }
        format.json { render json: @female4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female4x100mts/1
  # PATCH/PUT /female4x100mts/1.json
  def update
    respond_to do |format|
      if @female4x100mt.update(female4x100mt_params)
        format.html { redirect_to @female4x100mt, notice: 'Female4x100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female4x100mt }
      else
        format.html { render :edit }
        format.json { render json: @female4x100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female4x100mts/1
  # DELETE /female4x100mts/1.json
  def destroy
    @female4x100mt.destroy
    respond_to do |format|
      format.html { redirect_to female4x100mts_url, notice: 'Female4x100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female4x100mt
      @female4x100mt = Female4x100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female4x100mt_params
      params.require(:female4x100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female4x100mts_id)
    end
end
