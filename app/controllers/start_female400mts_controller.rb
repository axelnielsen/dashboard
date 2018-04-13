class StartFemale400mtsController < ApplicationController
  before_action :set_start_female400mt, only: [:show, :edit, :update, :destroy]

  # GET /start_female400mts
  # GET /start_female400mts.json
  def index
    @start_female400mts = StartFemale400mt.all
  end

  # GET /start_female400mts/1
  # GET /start_female400mts/1.json
  def show
  end

  # GET /start_female400mts/new
  def new
    @start_female400mt = StartFemale400mt.new
  end

  # GET /start_female400mts/1/edit
  def edit
  end

  # POST /start_female400mts
  # POST /start_female400mts.json
  def create
    @start_female400mt = StartFemale400mt.new(start_female400mt_params)

    respond_to do |format|
      if @start_female400mt.save
        format.html { redirect_to @start_female400mt, notice: 'Start female400mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_female400mt }
      else
        format.html { render :new }
        format.json { render json: @start_female400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female400mts/1
  # PATCH/PUT /start_female400mts/1.json
  def update
    respond_to do |format|
      if @start_female400mt.update(start_female400mt_params)
        format.html { redirect_to @start_female400mt, notice: 'Start female400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female400mt }
      else
        format.html { render :edit }
        format.json { render json: @start_female400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female400mts/1
  # DELETE /start_female400mts/1.json
  def destroy
    @start_female400mt.destroy
    respond_to do |format|
      format.html { redirect_to start_female400mts_url, notice: 'Start female400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female400mt
      @start_female400mt = StartFemale400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female400mt_params
      params.require(:start_female400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female400mtsHead_id)
    end
end
