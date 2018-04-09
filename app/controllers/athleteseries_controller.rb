class AthleteseriesController < ApplicationController
  before_action :set_athleteseries, only: [:show, :edit, :update, :destroy]

  # GET /athleteseries
  # GET /athleteseries.json
  def index
    @athleteseries = Athleteseries.all
  end

  # GET /athleteseries/1
  # GET /athleteseries/1.json
  def show
  end

  # GET /athleteseries/new
  def new
    @athleteseries = Athleteseries.new
  end

  # GET /athleteseries/1/edit
  def edit
  end

  # POST /athleteseries
  # POST /athleteseries.json
  def create
    @athleteseries = Athleteseries.new(athleteseries_params)

    respond_to do |format|
      if @athleteseries.save
        format.html { redirect_to @athleteseries, notice: 'Athleteseries was successfully created.' }
        format.json { render :show, status: :created, location: @athleteseries }
      else
        format.html { render :new }
        format.json { render json: @athleteseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athleteseries/1
  # PATCH/PUT /athleteseries/1.json
  def update
    respond_to do |format|
      if @athleteseries.update(athleteseries_params)
        format.html { redirect_to @athleteseries, notice: 'Athleteseries was successfully updated.' }
        format.json { render :show, status: :ok, location: @athleteseries }
      else
        format.html { render :edit }
        format.json { render json: @athleteseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athleteseries/1
  # DELETE /athleteseries/1.json
  def destroy
    @athleteseries.destroy
    respond_to do |format|
      format.html { redirect_to athleteseries_index_url, notice: 'Athleteseries was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athleteseries
      @athleteseries = Athleteseries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athleteseries_params
      params.require(:athleteseries).permit(:idSerie, :idAthlete, :idStatus)
    end
end
