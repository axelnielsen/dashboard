class StartFemaleJavelinsController < ApplicationController
  before_action :set_start_female_javelin, only: [:show, :edit, :update, :destroy]

  # GET /start_female_javelins
  # GET /start_female_javelins.json
  def index
    @start_female_javelins = StartFemaleJavelin.all
  end

  # GET /start_female_javelins/1
  # GET /start_female_javelins/1.json
  def show
  end

  # GET /start_female_javelins/new
  def new
    @start_female_javelin = StartFemaleJavelin.new
  end

  # GET /start_female_javelins/1/edit
  def edit
  end

  # POST /start_female_javelins
  # POST /start_female_javelins.json
  def create
    @start_female_javelin = StartFemaleJavelin.new(start_female_javelin_params)

    respond_to do |format|
      if @start_female_javelin.save
        format.html { redirect_to @start_female_javelin, notice: 'Start female javelin was successfully created.' }
        format.json { render :show, status: :created, location: @start_female_javelin }
      else
        format.html { render :new }
        format.json { render json: @start_female_javelin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female_javelins/1
  # PATCH/PUT /start_female_javelins/1.json
  def update
    respond_to do |format|
      if @start_female_javelin.update(start_female_javelin_params)
        format.html { redirect_to @start_female_javelin, notice: 'Start female javelin was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female_javelin }
      else
        format.html { render :edit }
        format.json { render json: @start_female_javelin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female_javelins/1
  # DELETE /start_female_javelins/1.json
  def destroy
    @start_female_javelin.destroy
    respond_to do |format|
      format.html { redirect_to start_female_javelins_url, notice: 'Start female javelin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female_javelin
      @start_female_javelin = StartFemaleJavelin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female_javelin_params
      params.require(:start_female_javelin).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :femaleJavelinHead_id)
    end
end
