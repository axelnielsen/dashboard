class StartMaleShotPutsController < ApplicationController
  before_action :set_start_male_shot_put, only: [:show, :edit, :update, :destroy]

  # GET /start_male_shot_puts
  # GET /start_male_shot_puts.json
 def index
     respond_to do |format|
       @start_male_shot_put = StartMaleShotPut.new
     format.html
      format.json { render json: StartMaleShotPutsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMaleShotPut.import(params[:file])
redirect_to start_male_shot_puts_url, notice: "Importado correctamente"
end

  # GET /start_male_shot_puts/1
  # GET /start_male_shot_puts/1.json
  def show
  end

  # GET /start_male_shot_puts/new
  def new
    @start_male_shot_put = StartMaleShotPut.new
  end

  # GET /start_male_shot_puts/1/edit
  def edit
  end

  # POST /start_male_shot_puts
  # POST /start_male_shot_puts.json
  def create
    @start_male_shot_put = StartMaleShotPut.new(start_male_shot_put_params)

    respond_to do |format|
      if @start_male_shot_put.save
        format.html { redirect_to action:index, notice: 'Start male shot put was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_shot_put }
      else
        format.html { render :new }
        format.json { render json: @start_male_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_shot_puts/1
  # PATCH/PUT /start_male_shot_puts/1.json
  def update
    respond_to do |format|
      if @start_male_shot_put.update(start_male_shot_put_params)
        format.html { redirect_to @start_male_shot_put, notice: 'Start male shot put was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_shot_put }
      else
        format.html { render :edit }
        format.json { render json: @start_male_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_shot_puts/1
  # DELETE /start_male_shot_puts/1.json
  def destroy
    @start_male_shot_put.destroy
    respond_to do |format|
      format.html { redirect_to start_male_shot_puts_url, notice: 'Start male shot put was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_shot_put
      @start_male_shot_put = StartMaleShotPut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_shot_put_params
      params.require(:start_male_shot_put).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :maleShotPutHead_id)
    end
end
