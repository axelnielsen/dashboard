class StartMaleJavelinsController < ApplicationController
  before_action :set_start_male_javelin, only: [:show, :edit, :update, :destroy]

  # GET /start_male_javelins
  # GET /start_male_javelins.json
 def index
     respond_to do |format|
         @start_male_javelin = StartMaleJavelin.new
     format.html
      format.json { render json: StartMaleJavelinsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartMaleJavelin.import(params[:file])
redirect_to start_male_javelins_url, notice: "Importado correctamente"
end


  # GET /start_male_javelins/1
  # GET /start_male_javelins/1.json
  def show
  end

  # GET /start_male_javelins/new
  def new
    @start_male_javelin = StartMaleJavelin.new
  end

  # GET /start_male_javelins/1/edit
  def edit
  end

  # POST /start_male_javelins
  # POST /start_male_javelins.json
  def create
    @start_male_javelin = StartMaleJavelin.new(start_male_javelin_params)

    respond_to do |format|
      if @start_male_javelin.save
        format.html { redirect_to action:index, notice: 'Start male javelin was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_javelin }
      else
        format.html { render :new }
        format.json { render json: @start_male_javelin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_javelins/1
  # PATCH/PUT /start_male_javelins/1.json
  def update
    respond_to do |format|
      if @start_male_javelin.update(start_male_javelin_params)
        format.html { redirect_to @start_male_javelin, notice: 'Start male javelin was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_javelin }
      else
        format.html { render :edit }
        format.json { render json: @start_male_javelin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_javelins/1
  # DELETE /start_male_javelins/1.json
  def destroy
    @start_male_javelin.destroy
    respond_to do |format|
      format.html { redirect_to start_male_javelins_url, notice: 'Start male javelin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_javelin
      @start_male_javelin = StartMaleJavelin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_javelin_params
      params.require(:start_male_javelin).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :maleJavelinHead_id)
    end
end
