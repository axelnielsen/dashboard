class StartFemale5000mtsController < ApplicationController
  before_action :set_start_female5000mt, only: [:show, :edit, :update, :destroy]

  # GET /start_female5000mts
  # GET /start_female5000mts.json
   def index
     respond_to do |format|
      @start_female5000mt = StartFemale5000mt.new
     format.html
      format.json { render json: StartFemale5000mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemale5000mt.import(params[:file])
redirect_to start_female5000mts_url, notice: "Importado correctamente"
end
  # GET /start_female5000mts/1
  # GET /start_female5000mts/1.json
  def show
  end

  # GET /start_female5000mts/new
  def new
    @start_female5000mt = StartFemale5000mt.new
  end

  # GET /start_female5000mts/1/edit
  def edit
  end

  # POST /start_female5000mts
  # POST /start_female5000mts.json
  def create
    @start_female5000mt = StartFemale5000mt.new(start_female5000mt_params)

    respond_to do |format|
      if @start_female5000mt.save
        format.html { redirect_to action:index, notice: 'Start female5000mt was successfully created.' }
        format.json { render :show, status: :created, location: @start_female5000mt }
      else
        format.html { render :new }
        format.json { render json: @start_female5000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female5000mts/1
  # PATCH/PUT /start_female5000mts/1.json
  def update
    respond_to do |format|
      if @start_female5000mt.update(start_female5000mt_params)
        format.html { redirect_to @start_female5000mt, notice: 'Start female5000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female5000mt }
      else
        format.html { render :edit }
        format.json { render json: @start_female5000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female5000mts/1
  # DELETE /start_female5000mts/1.json
  def destroy
    @start_female5000mt.destroy
    respond_to do |format|
      format.html { redirect_to start_female5000mts_url, notice: 'Start female5000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female5000mt
      @start_female5000mt = StartFemale5000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female5000mt_params
      params.require(:start_female5000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female5000mtStart_id)
    end
end
