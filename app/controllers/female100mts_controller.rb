class Female100mtsController < ApplicationController
  before_action :set_female100mt, only: [:show, :edit, :update, :destroy]

  # GET /female100mts
  # GET /female100mts.json
 def index
     respond_to do |format|
      @female100mt = Female100mt.new
     format.html
      format.json { render json: Female100mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female100mt.import(params[:file])
redirect_to female100mts_url, notice: "Importado correctamente"
end
  # GET /female100mts/1
  # GET /female100mts/1.json
  def show
  end

  # GET /female100mts/new
  def new
    @female100mt = Female100mt.new
  end

  # GET /female100mts/1/edit
  def edit
  end

  # POST /female100mts
  # POST /female100mts.json
  def create
    @female100mt = Female100mt.new(female100mt_params)

    respond_to do |format|
      if @female100mt.save
        format.html { redirect_to action:index, notice: 'Female100mt was successfully created.' }
        format.json { render :show, status: :created, location: @female100mt }
      else
        format.html { render :new }
        format.json { render json: @female100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female100mts/1
  # PATCH/PUT /female100mts/1.json
  def update
    respond_to do |format|
      if @female100mt.update(female100mt_params)
        format.html { redirect_to @female100mt, notice: 'Female100mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female100mt }
      else
        format.html { render :edit }
        format.json { render json: @female100mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female100mts/1
  # DELETE /female100mts/1.json
  def destroy
    @female100mt.destroy
    respond_to do |format|
      format.html { redirect_to female100mts_url, notice: 'Female100mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female100mt
      @female100mt = Female100mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female100mt_params
      params.require(:female100mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female100mtsHead_id)
    end
end
