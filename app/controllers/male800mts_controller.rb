class Male800mtsController < ApplicationController
  before_action :set_male800mt, only: [:show, :edit, :update, :destroy]

  # GET /male800mts
  # GET /male800mts.json
    def index
     respond_to do |format|
      @male800mt = Male800mt.new
     format.html
      format.json { render json: Male800mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male800mt.import(params[:file])
redirect_to male800mts_url, notice: "Importado correctamente"
end


  # GET /male800mts/1
  # GET /male800mts/1.json
  def show
  end

  # GET /male800mts/new
  def new
    @male800mt = Male800mt.new
  end

  # GET /male800mts/1/edit
  def edit
  end

  # POST /male800mts
  # POST /male800mts.json
  def create
    @male800mt = Male800mt.new(male800mt_params)

    respond_to do |format|
      if @male800mt.save
        format.html { redirect_to action:index, notice: 'Male800mt was successfully created.' }
        format.json { render :show, status: :created, location: @male800mt }
      else
        format.html { render :new }
        format.json { render json: @male800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male800mts/1
  # PATCH/PUT /male800mts/1.json
  def update
    respond_to do |format|
      if @male800mt.update(male800mt_params)
        format.html { redirect_to @male800mt, notice: 'Male800mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male800mt }
      else
        format.html { render :edit }
        format.json { render json: @male800mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male800mts/1
  # DELETE /male800mts/1.json
  def destroy
    @male800mt.destroy
    respond_to do |format|
      format.html { redirect_to male800mts_url, notice: 'Male800mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male800mt
      @male800mt = Male800mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male800mt_params
      params.require(:male800mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male800mtHead_id)
    end
end
