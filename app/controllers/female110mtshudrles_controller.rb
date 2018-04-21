class Female110mtshudrlesController < ApplicationController
  before_action :set_female110mtshudrle, only: [:show, :edit, :update, :destroy]

  # GET /female110mtshudrles
  # GET /female110mtshudrles.json
        def index
     respond_to do |format|
     format.html
      format.json { render json: Female110mtshudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female110mtshudrle.import(params[:file])
redirect_to female110mtshudrles_url, notice: "Importado correctamente"
end
  # GET /female110mtshudrles/1
  # GET /female110mtshudrles/1.json
  def show
  end

  # GET /female110mtshudrles/new
  def new
    @female110mtshudrle = Female110mtshudrle.new
  end

  # GET /female110mtshudrles/1/edit
  def edit
  end

  # POST /female110mtshudrles
  # POST /female110mtshudrles.json
  def create
    @female110mtshudrle = Female110mtshudrle.new(female110mtshudrle_params)

    respond_to do |format|
      if @female110mtshudrle.save
        format.html { redirect_to @female110mtshudrle, notice: 'Female110mtshudrle was successfully created.' }
        format.json { render :show, status: :created, location: @female110mtshudrle }
      else
        format.html { render :new }
        format.json { render json: @female110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female110mtshudrles/1
  # PATCH/PUT /female110mtshudrles/1.json
  def update
    respond_to do |format|
      if @female110mtshudrle.update(female110mtshudrle_params)
        format.html { redirect_to @female110mtshudrle, notice: 'Female110mtshudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @female110mtshudrle }
      else
        format.html { render :edit }
        format.json { render json: @female110mtshudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female110mtshudrles/1
  # DELETE /female110mtshudrles/1.json
  def destroy
    @female110mtshudrle.destroy
    respond_to do |format|
      format.html { redirect_to female110mtshudrles_url, notice: 'Female110mtshudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female110mtshudrle
      @female110mtshudrle = Female110mtshudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female110mtshudrle_params
      params.require(:female110mtshudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female110mtshudrleHead_id)
    end
end
