class Female100mthudrlesController < ApplicationController
  before_action :set_female100mthudrle, only: [:show, :edit, :update, :destroy]

  # GET /female100mthudrles
  # GET /female100mthudrles.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: Female100mthudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female100mthudrle.import(params[:file])
redirect_to female100mthudrles_url, notice: "Importado correctamente"
end

  # GET /female100mthudrles/1
  # GET /female100mthudrles/1.json
  def show
  end

  # GET /female100mthudrles/new
  def new
    @female100mthudrle = Female100mthudrle.new
  end

  # GET /female100mthudrles/1/edit
  def edit
  end

  # POST /female100mthudrles
  # POST /female100mthudrles.json
  def create
    @female100mthudrle = Female100mthudrle.new(female100mthudrle_params)

    respond_to do |format|
      if @female100mthudrle.save
        format.html { redirect_to @female100mthudrle, notice: 'Female100mthudrle was successfully created.' }
        format.json { render :show, status: :created, location: @female100mthudrle }
      else
        format.html { render :new }
        format.json { render json: @female100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female100mthudrles/1
  # PATCH/PUT /female100mthudrles/1.json
  def update
    respond_to do |format|
      if @female100mthudrle.update(female100mthudrle_params)
        format.html { redirect_to @female100mthudrle, notice: 'Female100mthudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @female100mthudrle }
      else
        format.html { render :edit }
        format.json { render json: @female100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female100mthudrles/1
  # DELETE /female100mthudrles/1.json
  def destroy
    @female100mthudrle.destroy
    respond_to do |format|
      format.html { redirect_to female100mthudrles_url, notice: 'Female100mthudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female100mthudrle
      @female100mthudrle = Female100mthudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female100mthudrle_params
      params.require(:female100mthudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female100mthudrlesHead_id)
    end
end
