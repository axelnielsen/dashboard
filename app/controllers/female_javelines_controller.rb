class FemaleJavelinesController < ApplicationController
  before_action :set_female_javeline, only: [:show, :edit, :update, :destroy]

  # GET /female_javelines
  # GET /female_javelines.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: FemaleJavelinesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
FemaleJaveline.import(params[:file])
redirect_to start_female_javelines_url, notice: "Importado correctamente"
end

  # GET /female_javelines/1
  # GET /female_javelines/1.json
  def show
  end

  # GET /female_javelines/new
  def new
    @female_javeline = FemaleJaveline.new
  end

  # GET /female_javelines/1/edit
  def edit
  end

  # POST /female_javelines
  # POST /female_javelines.json
  def create
    @female_javeline = FemaleJaveline.new(female_javeline_params)

    respond_to do |format|
      if @female_javeline.save
        format.html { redirect_to @female_javeline, notice: 'Female javeline was successfully created.' }
        format.json { render :show, status: :created, location: @female_javeline }
      else
        format.html { render :new }
        format.json { render json: @female_javeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_javelines/1
  # PATCH/PUT /female_javelines/1.json
  def update
    respond_to do |format|
      if @female_javeline.update(female_javeline_params)
        format.html { redirect_to @female_javeline, notice: 'Female javeline was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_javeline }
      else
        format.html { render :edit }
        format.json { render json: @female_javeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_javelines/1
  # DELETE /female_javelines/1.json
  def destroy
    @female_javeline.destroy
    respond_to do |format|
      format.html { redirect_to female_javelines_url, notice: 'Female javeline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_javeline
      @female_javeline = FemaleJaveline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_javeline_params
      params.require(:female_javeline).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
