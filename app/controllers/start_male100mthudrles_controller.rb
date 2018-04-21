class StartMale100mthudrlesController < ApplicationController
  before_action :set_start_male100mthudrle, only: [:show, :edit, :update, :destroy]

  # GET /start_male100mthudrles
  # GET /start_male100mthudrles.json
   def index
     respond_to do |format|
        @start_male100mthudrle = StartMale100mthudrle.new
     format.html
      format.json { render json: StartMale100mthudrlesDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMale100mthudrle.import(params[:file])
redirect_to start_male100mthudrles_url, notice: "Importado correctamente"
end

  # GET /start_male100mthudrles/1
  # GET /start_male100mthudrles/1.json
  def show
  end

  # GET /start_male100mthudrles/new
  def new
    @start_male100mthudrle = StartMale100mthudrle.new
  end

  # GET /start_male100mthudrles/1/edit
  def edit
  end

  # POST /start_male100mthudrles
  # POST /start_male100mthudrles.json
  def create
    @start_male100mthudrle = StartMale100mthudrle.new(start_male100mthudrle_params)

    respond_to do |format|
      if @start_male100mthudrle.save
        format.html { redirect_to action:index, notice: 'Start male100mthudrle was successfully created.' }
        format.json { render :show, status: :created, location: @start_male100mthudrle }
      else
        format.html { render :new }
        format.json { render json: @start_male100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male100mthudrles/1
  # PATCH/PUT /start_male100mthudrles/1.json
  def update
    respond_to do |format|
      if @start_male100mthudrle.update(start_male100mthudrle_params)
        format.html { redirect_to @start_male100mthudrle, notice: 'Start male100mthudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male100mthudrle }
      else
        format.html { render :edit }
        format.json { render json: @start_male100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male100mthudrles/1
  # DELETE /start_male100mthudrles/1.json
  def destroy
    @start_male100mthudrle.destroy
    respond_to do |format|
      format.html { redirect_to start_male100mthudrles_url, notice: 'Start male100mthudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male100mthudrle
      @start_male100mthudrle = StartMale100mthudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male100mthudrle_params
      params.require(:start_male100mthudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male100mthudresHead_id)
    end
end
