class StartFemale100mthudrlesController < ApplicationController
  before_action :set_start_female100mthudrle, only: [:show, :edit, :update, :destroy]

  # GET /start_female100mthudrles
  # GET /start_female100mthudrles.json
  def index
    @start_female100mthudrles = StartFemale100mthudrle.all
  end

  # GET /start_female100mthudrles/1
  # GET /start_female100mthudrles/1.json
  def show
  end

  # GET /start_female100mthudrles/new
  def new
    @start_female100mthudrle = StartFemale100mthudrle.new
  end

  # GET /start_female100mthudrles/1/edit
  def edit
  end

  # POST /start_female100mthudrles
  # POST /start_female100mthudrles.json
  def create
    @start_female100mthudrle = StartFemale100mthudrle.new(start_female100mthudrle_params)

    respond_to do |format|
      if @start_female100mthudrle.save
        format.html { redirect_to @start_female100mthudrle, notice: 'Start female100mthudrle was successfully created.' }
        format.json { render :show, status: :created, location: @start_female100mthudrle }
      else
        format.html { render :new }
        format.json { render json: @start_female100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female100mthudrles/1
  # PATCH/PUT /start_female100mthudrles/1.json
  def update
    respond_to do |format|
      if @start_female100mthudrle.update(start_female100mthudrle_params)
        format.html { redirect_to @start_female100mthudrle, notice: 'Start female100mthudrle was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female100mthudrle }
      else
        format.html { render :edit }
        format.json { render json: @start_female100mthudrle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female100mthudrles/1
  # DELETE /start_female100mthudrles/1.json
  def destroy
    @start_female100mthudrle.destroy
    respond_to do |format|
      format.html { redirect_to start_female100mthudrles_url, notice: 'Start female100mthudrle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female100mthudrle
      @start_female100mthudrle = StartFemale100mthudrle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female100mthudrle_params
      params.require(:start_female100mthudrle).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female100mthudresHead_id)
    end
end
