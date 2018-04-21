class StartMale3000mtsobstaclesController < ApplicationController
  before_action :set_start_male3000mtsobstacle, only: [:show, :edit, :update, :destroy]

  # GET /start_male3000mtsobstacles
  # GET /start_male3000mtsobstacles.json
 def index
     respond_to do |format|
       @start_male3000mtsobstacle = StartMale3000mtsobstacle.new
     format.html
      format.json { render json: StartMale3000mtsobstaclesDatatable.new(view_context) }
      format.xlsx
    end
end

  # GET /start_male3000mtsobstacles/1
  # GET /start_male3000mtsobstacles/1.json
  def show
  end

  # GET /start_male3000mtsobstacles/new
  def new
    @start_male3000mtsobstacle = StartMale3000mtsobstacle.new
  end

  # GET /start_male3000mtsobstacles/1/edit
  def edit
  end

  # POST /start_male3000mtsobstacles
  # POST /start_male3000mtsobstacles.json
  def create
    @start_male3000mtsobstacle = StartMale3000mtsobstacle.new(start_male3000mtsobstacle_params)

    respond_to do |format|
      if @start_male3000mtsobstacle.save
        format.html { redirect_to action:index, notice: 'Start male3000mtsobstacle was successfully created.' }
        format.json { render :show, status: :created, location: @start_male3000mtsobstacle }
      else
        format.html { render :new }
        format.json { render json: @start_male3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male3000mtsobstacles/1
  # PATCH/PUT /start_male3000mtsobstacles/1.json
  def update
    respond_to do |format|
      if @start_male3000mtsobstacle.update(start_male3000mtsobstacle_params)
        format.html { redirect_to @start_male3000mtsobstacle, notice: 'Start male3000mtsobstacle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male3000mtsobstacle }
      else
        format.html { render :edit }
        format.json { render json: @start_male3000mtsobstacle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male3000mtsobstacles/1
  # DELETE /start_male3000mtsobstacles/1.json
  def destroy
    @start_male3000mtsobstacle.destroy
    respond_to do |format|
      format.html { redirect_to start_male3000mtsobstacles_url, notice: 'Start male3000mtsobstacle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male3000mtsobstacle
      @start_male3000mtsobstacle = StartMale3000mtsobstacle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male3000mtsobstacle_params
      params.require(:start_male3000mtsobstacle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male3000mtsobstacleStart_id)
    end
end
