class Male100mthudrlesController < ApplicationController
  before_action :set_male100mthudrle, only: [:show, :edit, :update, :destroy]

  # GET /male100mthudrles
  # GET /male100mthudrles.json
    def index
     respond_to do |format|
     format.html
      format.json { render json: Male100mthudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male100mthudrle.import(params[:file])
redirect_to start_male100mthudrles_url, notice: "Importado correctamente"
end

  # GET /male100mthudrles/1
  # GET /male100mthudrles/1.json
  def show
  end

  # GET /male100mthudrles/new
  def new
    @male100mthudrle = Male100mthudrle.new
  end

  # GET /male100mthudrles/1/edit
  def edit
  end

  # POST /male100mthudrles
  # POST /male100mthudrles.json
  def create
    @male100mthudrle = Male100mthudrle.new(male100mthudrle_params)

    respond_to do |format|
      if @male100mthudrle.save
        format.html { redirect_to @male100mthudrle, notice: 'Male100mthudrle was successfully created.' }
        format.json { render :show, status: :created, location: @male100mthudrle }
      else
        format.html { render :new }
        format.json { render json: @male100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male100mthudrles/1
  # PATCH/PUT /male100mthudrles/1.json
  def update
    respond_to do |format|
      if @male100mthudrle.update(male100mthudrle_params)
        format.html { redirect_to @male100mthudrle, notice: 'Male100mthudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @male100mthudrle }
      else
        format.html { render :edit }
        format.json { render json: @male100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male100mthudrles/1
  # DELETE /male100mthudrles/1.json
  def destroy
    @male100mthudrle.destroy
    respond_to do |format|
      format.html { redirect_to male100mthudrles_url, notice: 'Male100mthudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male100mthudrle
      @male100mthudrle = Male100mthudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male100mthudrle_params
      params.require(:male100mthudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male100mthudrleHead_id)
    end
end
