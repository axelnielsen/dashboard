class Male400mthudrlesController < ApplicationController
  before_action :set_male400mthudrle, only: [:show, :edit, :update, :destroy]

  # GET /male400mthudrles
  # GET /male400mthudrles.json
   def index
     respond_to do |format|
      @male400mthudrle = Male400mthudrle.new
     format.html
      format.json { render json: Male400mthudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male400mthudrle.import(params[:file])
redirect_to start_male400mthudrles_url, notice: "Importado correctamente"
end

  # GET /male400mthudrles/1
  # GET /male400mthudrles/1.json
  def show
  end

  # GET /male400mthudrles/new
  def new
    @male400mthudrle = Male400mthudrle.new
  end

  # GET /male400mthudrles/1/edit
  def edit
  end

  # POST /male400mthudrles
  # POST /male400mthudrles.json
  def create
    @male400mthudrle = Male400mthudrle.new(male400mthudrle_params)

    respond_to do |format|
      if @male400mthudrle.save
        format.html { redirect_to action:index, notice: 'Male400mthudrle was successfully created.' }
        format.json { render :show, status: :created, location: @male400mthudrle }
      else
        format.html { render :new }
        format.json { render json: @male400mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male400mthudrles/1
  # PATCH/PUT /male400mthudrles/1.json
  def update
    respond_to do |format|
      if @male400mthudrle.update(male400mthudrle_params)
        format.html { redirect_to @male400mthudrle, notice: 'Male400mthudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @male400mthudrle }
      else
        format.html { render :edit }
        format.json { render json: @male400mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male400mthudrles/1
  # DELETE /male400mthudrles/1.json
  def destroy
    @male400mthudrle.destroy
    respond_to do |format|
      format.html { redirect_to male400mthudrles_url, notice: 'Male400mthudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male400mthudrle
      @male400mthudrle = Male400mthudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male400mthudrle_params
      params.require(:male400mthudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male400mthudrleHead_id)
    end
end
