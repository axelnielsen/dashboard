class StartFemale4x400mtsController < ApplicationController
  before_action :set_start_female4x400mt, only: [:show, :edit, :update, :destroy]

  # GET /start_female4x400mts
  # GET /start_female4x400mts.json
def index
     respond_to do |format|
        @start_female4x400mt = StartFemale4x400mt.new
     format.html
      format.json { render json: StartFemale4x400mtsDatatable.new(view_context) }
      format.xlsx
    end
end


  # GET /start_female4x400mts/1
  # GET /start_female4x400mts/1.json
  def show
  end

  # GET /start_female4x400mts/new
  def new
    @start_female4x400mt = StartFemale4x400mt.new
  end

  # GET /start_female4x400mts/1/edit
  def edit
  end

  # POST /start_female4x400mts
  # POST /start_female4x400mts.json
  def create
    @start_female4x400mt = StartFemale4x400mt.new(start_female4x400mt_params)

    respond_to do |format|
      if @start_female4x400mt.save
        format.html { redirect_to action:index, notice: 'Start female4x400mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_female4x400mt }
      else
        format.html { render :new }
        format.json { render json: @start_female4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female4x400mts/1
  # PATCH/PUT /start_female4x400mts/1.json
  def update
    respond_to do |format|
      if @start_female4x400mt.update(start_female4x400mt_params)
        format.html { redirect_to @start_female4x400mt, notice: 'Start female4x400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female4x400mt }
      else
        format.html { render :edit }
        format.json { render json: @start_female4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female4x400mts/1
  # DELETE /start_female4x400mts/1.json
  def destroy
    @start_female4x400mt.destroy
    respond_to do |format|
      format.html { redirect_to start_female4x400mts_url, notice: 'Start female4x400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female4x400mt
      @start_female4x400mt = StartFemale4x400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female4x400mt_params
      params.require(:start_female4x400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female4x400mtStart_id)
    end
end
