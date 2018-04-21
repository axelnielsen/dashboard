class StartFemale800mtsController < ApplicationController
  before_action :set_start_female800mt, only: [:show, :edit, :update, :destroy]

  # GET /start_female800mts
  # GET /start_female800mts.json
  def index
     respond_to do |format|
          @start_female800mt = StartFemale800mt.new
     format.html
      format.json { render json: StartFemale800mtsDatatable.new(view_context) }
      format.xlsx
    end
end


  # GET /start_female800mts/1
  # GET /start_female800mts/1.json
  def show
  end

  # GET /start_female800mts/new
  def new
    @start_female800mt = StartFemale800mt.new
  end

  # GET /start_female800mts/1/edit
  def edit
  end

  # POST /start_female800mts
  # POST /start_female800mts.json
  def create
    @start_female800mt = StartFemale800mt.new(start_female800mt_params)

    respond_to do |format|
      if @start_female800mt.save
        format.html { redirect_to action:index, notice: 'Start female800mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_female800mt }
      else
        format.html { render :new }
        format.json { render json: @start_female800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female800mts/1
  # PATCH/PUT /start_female800mts/1.json
  def update
    respond_to do |format|
      if @start_female800mt.update(start_female800mt_params)
        format.html { redirect_to @start_female800mt, notice: 'Start female800mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female800mt }
      else
        format.html { render :edit }
        format.json { render json: @start_female800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female800mts/1
  # DELETE /start_female800mts/1.json
  def destroy
    @start_female800mt.destroy
    respond_to do |format|
      format.html { redirect_to start_female800mts_url, notice: 'Start female800mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female800mt
      @start_female800mt = StartFemale800mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female800mt_params
      params.require(:start_female800mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female800mtStart_id)
    end
end
