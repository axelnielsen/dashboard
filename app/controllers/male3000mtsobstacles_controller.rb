class Male3000mtsobstaclesController < ApplicationController
  before_action :set_male3000mtsobstacle, only: [:show, :edit, :update, :destroy]

  # GET /male3000mtsobstacles
  # GET /male3000mtsobstacles.json
  def index
    @male3000mtsobstacles = Male3000mtsobstacle.all
  end

  # GET /male3000mtsobstacles/1
  # GET /male3000mtsobstacles/1.json
  def show
  end

  # GET /male3000mtsobstacles/new
  def new
    @male3000mtsobstacle = Male3000mtsobstacle.new
  end

  # GET /male3000mtsobstacles/1/edit
  def edit
  end

  # POST /male3000mtsobstacles
  # POST /male3000mtsobstacles.json
  def create
    @male3000mtsobstacle = Male3000mtsobstacle.new(male3000mtsobstacle_params)

    respond_to do |format|
      if @male3000mtsobstacle.save
        format.html { redirect_to @male3000mtsobstacle, notice: 'Male3000mtsobstacle was successfully created.' }
        format.json { render :show, status: :created, location: @male3000mtsobstacle }
      else
        format.html { render :new }
        format.json { render json: @male3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male3000mtsobstacles/1
  # PATCH/PUT /male3000mtsobstacles/1.json
  def update
    respond_to do |format|
      if @male3000mtsobstacle.update(male3000mtsobstacle_params)
        format.html { redirect_to @male3000mtsobstacle, notice: 'Male3000mtsobstacle was successfully updated.' }
        format.json { render :show, status: :ok, location: @male3000mtsobstacle }
      else
        format.html { render :edit }
        format.json { render json: @male3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male3000mtsobstacles/1
  # DELETE /male3000mtsobstacles/1.json
  def destroy
    @male3000mtsobstacle.destroy
    respond_to do |format|
      format.html { redirect_to male3000mtsobstacles_url, notice: 'Male3000mtsobstacle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male3000mtsobstacle
      @male3000mtsobstacle = Male3000mtsobstacle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male3000mtsobstacle_params
      params.require(:male3000mtsobstacle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male3000mtsobstacleHead_id)
    end
end
