class Male4x400mtsController < ApplicationController
  before_action :set_male4x400mt, only: [:show, :edit, :update, :destroy]

  # GET /male4x400mts
  # GET /male4x400mts.json
      def index
     respond_to do |format|
      @male4x400mt = Male4x400mt.new
     format.html
      format.json { render json: Male4x400mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Male4x400mt.import(params[:file])
redirect_to male4x400mts_url, notice: "Importado correctamente"
end


  # GET /male4x400mts/1
  # GET /male4x400mts/1.json
  def show
  end

  # GET /male4x400mts/new
  def new
    @male4x400mt = Male4x400mt.new
  end

  # GET /male4x400mts/1/edit
  def edit
  end

  # POST /male4x400mts
  # POST /male4x400mts.json
  def create
    @male4x400mt = Male4x400mt.new(male4x400mt_params)

    respond_to do |format|
      if @male4x400mt.save
        format.html { redirect_to action:index, notice: 'Male4x400mt was successfully created.' }
        format.json { render :show, status: :created, location: @male4x400mt }
      else
        format.html { render :new }
        format.json { render json: @male4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male4x400mts/1
  # PATCH/PUT /male4x400mts/1.json
  def update
    respond_to do |format|
      if @male4x400mt.update(male4x400mt_params)
        format.html { redirect_to @male4x400mt, notice: 'Male4x400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male4x400mt }
      else
        format.html { render :edit }
        format.json { render json: @male4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male4x400mts/1
  # DELETE /male4x400mts/1.json
  def destroy
    @male4x400mt.destroy
    respond_to do |format|
      format.html { redirect_to male4x400mts_url, notice: 'Male4x400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male4x400mt
      @male4x400mt = Male4x400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male4x400mt_params
      params.require(:male4x400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male4x400mtHead_id)
    end
end
