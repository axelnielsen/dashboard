class StartMale800mtsController < ApplicationController
  before_action :set_start_male800mt, only: [:show, :edit, :update, :destroy]

  # GET /start_male800mts
  # GET /start_male800mts.json
def index
     respond_to do |format|
     format.html
      format.json { render json: StartMale800mtsDatatable.new(view_context) }
      format.xlsx
    end
end

  # GET /start_male800mts/1
  # GET /start_male800mts/1.json
  def show
  end

  # GET /start_male800mts/new
  def new
    @start_male800mt = StartMale800mt.new
  end

  # GET /start_male800mts/1/edit
  def edit
  end

  # POST /start_male800mts
  # POST /start_male800mts.json
  def create
    @start_male800mt = StartMale800mt.new(start_male800mt_params)

    respond_to do |format|
      if @start_male800mt.save
        format.html { redirect_to @start_male800mt, notice: 'Start male800mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_male800mt }
      else
        format.html { render :new }
        format.json { render json: @start_male800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male800mts/1
  # PATCH/PUT /start_male800mts/1.json
  def update
    respond_to do |format|
      if @start_male800mt.update(start_male800mt_params)
        format.html { redirect_to @start_male800mt, notice: 'Start male800mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male800mt }
      else
        format.html { render :edit }
        format.json { render json: @start_male800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male800mts/1
  # DELETE /start_male800mts/1.json
  def destroy
    @start_male800mt.destroy
    respond_to do |format|
      format.html { redirect_to start_male800mts_url, notice: 'Start male800mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male800mt
      @start_male800mt = StartMale800mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male800mt_params
      params.require(:start_male800mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male800mtStart_id)
    end
end
