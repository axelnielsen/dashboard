class Female4x400mtsController < ApplicationController
  before_action :set_female4x400mt, only: [:show, :edit, :update, :destroy]

  # GET /female4x400mts
  # GET /female4x400mts.json
     def index
     respond_to do |format|
       @female4x400mt = Female4x400mt.new
     format.html
      format.json { render json: Female4x400mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female4x400mt.import(params[:file])
redirect_to female4x400mts_url, notice: "Importado correctamente"
end


  # GET /female4x400mts/1
  # GET /female4x400mts/1.json
  def show
  end

  # GET /female4x400mts/new
  def new
    @female4x400mt = Female4x400mt.new
  end

  # GET /female4x400mts/1/edit
  def edit
  end

  # POST /female4x400mts
  # POST /female4x400mts.json
  def create
    @female4x400mt = Female4x400mt.new(female4x400mt_params)

    respond_to do |format|
      if @female4x400mt.save
        format.html { redirect_to action:index, notice: 'Female4x400mt was successfully created.' }
        format.json { render :show, status: :created, location: @female4x400mt }
      else
        format.html { render :new }
        format.json { render json: @female4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female4x400mts/1
  # PATCH/PUT /female4x400mts/1.json
  def update
    respond_to do |format|
      if @female4x400mt.update(female4x400mt_params)
        format.html { redirect_to @female4x400mt, notice: 'Female4x400mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female4x400mt }
      else
        format.html { render :edit }
        format.json { render json: @female4x400mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female4x400mts/1
  # DELETE /female4x400mts/1.json
  def destroy
    @female4x400mt.destroy
    respond_to do |format|
      format.html { redirect_to female4x400mts_url, notice: 'Female4x400mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female4x400mt
      @female4x400mt = Female4x400mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female4x400mt_params
      params.require(:female4x400mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female4x400mtHead_id)
    end
end
