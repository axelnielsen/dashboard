class StartMale10000mtsController < ApplicationController
  before_action :set_start_male10000mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male10000mts
  # GET /start_male10000mts.json
 def index
     respond_to do |format|
       @start_male10000mt = StartMale10000mt.new
     format.html
      format.json { render json: StartMale10000mtsDatatable.new(view_context) }
      format.xlsx
    end
end


  # GET /start_male10000mts/1
  # GET /start_male10000mts/1.json
  def show
  end

  # GET /start_male10000mts/new
  def new
    @start_male10000mt = StartMale10000mt.new
  end

  # GET /start_male10000mts/1/edit
  def edit
  end

  # POST /start_male10000mts
  # POST /start_male10000mts.json
  def create
    @start_male10000mt = StartMale10000mt.new(start_male10000mt_params)

    respond_to do |format|
      if @start_male10000mt.save
        format.html { redirect_to action:index, notice: 'Start male10000mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male10000mt }
      else
        format.html { render :new }
        format.json { render json: @start_male10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male10000mts/1
  # PATCH/PUT /start_male10000mts/1.json
  def update
    respond_to do |format|
      if @start_male10000mt.update(start_male10000mt_params)
        format.html { redirect_to @start_male10000mt, notice: 'Start male10000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male10000mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male10000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male10000mts/1
  # DELETE /start_male10000mts/1.json
  def destroy
    @start_male10000mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male10000mts_url, notice: 'Start male10000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male10000mt
      @start_male10000mt = StartMale10000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male10000mt_params
      params.require(:start_male10000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male10000mtStart_id)
    end
end
