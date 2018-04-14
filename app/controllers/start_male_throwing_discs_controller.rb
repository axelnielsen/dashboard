class StartMaleThrowingDiscsController < ApplicationController
  before_action :set_start_male_throwing_disc, only: [:show, :edit, :update, :destroy]

  # GET /start_male_throwing_discs
  # GET /start_male_throwing_discs.json
 def index
     respond_to do |format|
     format.html
      format.json { render json: StartMaleThrowingDiscsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMaleThrowingDisc.import(params[:file])
redirect_to start_male_throwing_discs_url, notice: "Importado correctamente"
end

  # GET /start_male_throwing_discs/1
  # GET /start_male_throwing_discs/1.json
  def show
  end

  # GET /start_male_throwing_discs/new
  def new
    @start_male_throwing_disc = StartMaleThrowingDisc.new
  end

  # GET /start_male_throwing_discs/1/edit
  def edit
  end

  # POST /start_male_throwing_discs
  # POST /start_male_throwing_discs.json
  def create
    @start_male_throwing_disc = StartMaleThrowingDisc.new(start_male_throwing_disc_params)

    respond_to do |format|
      if @start_male_throwing_disc.save
        format.html { redirect_to @start_male_throwing_disc, notice: 'Start male throwing disc was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_throwing_disc }
      else
        format.html { render :new }
        format.json { render json: @start_male_throwing_disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_throwing_discs/1
  # PATCH/PUT /start_male_throwing_discs/1.json
  def update
    respond_to do |format|
      if @start_male_throwing_disc.update(start_male_throwing_disc_params)
        format.html { redirect_to @start_male_throwing_disc, notice: 'Start male throwing disc was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_throwing_disc }
      else
        format.html { render :edit }
        format.json { render json: @start_male_throwing_disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_throwing_discs/1
  # DELETE /start_male_throwing_discs/1.json
  def destroy
    @start_male_throwing_disc.destroy
    respond_to do |format|
      format.html { redirect_to start_male_throwing_discs_url, notice: 'Start male throwing disc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_throwing_disc
      @start_male_throwing_disc = StartMaleThrowingDisc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_throwing_disc_params
      params.require(:start_male_throwing_disc).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :maleThrowingDiscHead_id)
    end
end
