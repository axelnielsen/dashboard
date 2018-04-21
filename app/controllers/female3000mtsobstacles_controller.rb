class Female3000mtsobstaclesController < ApplicationController
  before_action :set_female3000mtsobstacle, only: [:show, :edit, :update, :destroy]

  # GET /female3000mtsobstacles
  # GET /female3000mtsobstacles.json
     def index
     respond_to do |format|
         @female3000mtsobstacle = Female3000mtsobstacle.new
     format.html
      format.json { render json: Female3000mtsobstaclesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female3000mtsobstacle.import(params[:file])
redirect_to female3000mtsobstacles_url, notice: "Importado correctamente"
end

  # GET /female3000mtsobstacles/1
  # GET /female3000mtsobstacles/1.json
  def show
  end

  # GET /female3000mtsobstacles/new
  def new
    @female3000mtsobstacle = Female3000mtsobstacle.new
  end

  # GET /female3000mtsobstacles/1/edit
  def edit
  end

  # POST /female3000mtsobstacles
  # POST /female3000mtsobstacles.json
  def create
    @female3000mtsobstacle = Female3000mtsobstacle.new(female3000mtsobstacle_params)

    respond_to do |format|
      if @female3000mtsobstacle.save
        format.html { redirect_to action:index, notice: 'Female3000mtsobstacle was successfully created.' }
        format.json { render :show, status: :created, location: @female3000mtsobstacle }
      else
        format.html { render :new }
        format.json { render json: @female3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female3000mtsobstacles/1
  # PATCH/PUT /female3000mtsobstacles/1.json
  def update
    respond_to do |format|
      if @female3000mtsobstacle.update(female3000mtsobstacle_params)
        format.html { redirect_to @female3000mtsobstacle, notice: 'Female3000mtsobstacle was successfully updated.' }
        format.json { render :show, status: :ok, location: @female3000mtsobstacle }
      else
        format.html { render :edit }
        format.json { render json: @female3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female3000mtsobstacles/1
  # DELETE /female3000mtsobstacles/1.json
  def destroy
    @female3000mtsobstacle.destroy
    respond_to do |format|
      format.html { redirect_to female3000mtsobstacles_url, notice: 'Female3000mtsobstacle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female3000mtsobstacle
      @female3000mtsobstacle = Female3000mtsobstacle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female3000mtsobstacle_params
      params.require(:female3000mtsobstacle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female3000mtsobstacleHead_id)
    end
end
