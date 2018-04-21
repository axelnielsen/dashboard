class StartFemaleHammerThrowsController < ApplicationController
  before_action :set_start_female_hammer_throw, only: [:show, :edit, :update, :destroy]

  # GET /start_female_hammer_throws
  # GET /start_female_hammer_throws.json
       def index
     respond_to do |format|
       @start_female_hammer_throw = StartFemaleHammerThrow.new
     format.html
      format.json { render json: StartFemaleHammerThrowsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemaleHammerThrow.import(params[:file])
redirect_to start_female_hammer_throws_url, notice: "Importado correctamente"
end

  # GET /start_female_hammer_throws/1
  # GET /start_female_hammer_throws/1.json
  def show
  end

  # GET /start_female_hammer_throws/new
  def new
    @start_female_hammer_throw = StartFemaleHammerThrow.new
  end

  # GET /start_female_hammer_throws/1/edit
  def edit
  end

  # POST /start_female_hammer_throws
  # POST /start_female_hammer_throws.json
  def create
    @start_female_hammer_throw = StartFemaleHammerThrow.new(start_female_hammer_throw_params)

    respond_to do |format|
      if @start_female_hammer_throw.save
        format.html { redirect_to action:index, notice: 'Start female hammer throw was successfully created.' }
        format.json { render :show, status: :created, location: @start_female_hammer_throw }
      else
        format.html { render :new }
        format.json { render json: @start_female_hammer_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female_hammer_throws/1
  # PATCH/PUT /start_female_hammer_throws/1.json
  def update
    respond_to do |format|
      if @start_female_hammer_throw.update(start_female_hammer_throw_params)
        format.html { redirect_to @start_female_hammer_throw, notice: 'Start female hammer throw was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female_hammer_throw }
      else
        format.html { render :edit }
        format.json { render json: @start_female_hammer_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female_hammer_throws/1
  # DELETE /start_female_hammer_throws/1.json
  def destroy
    @start_female_hammer_throw.destroy
    respond_to do |format|
      format.html { redirect_to start_female_hammer_throws_url, notice: 'Start female hammer throw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female_hammer_throw
      @start_female_hammer_throw = StartFemaleHammerThrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female_hammer_throw_params
      params.require(:start_female_hammer_throw).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :femalehammerthrowStart_id)
    end
end
