class Female20000mtsController < ApplicationController
  before_action :set_female20000mt, only: [:show, :edit, :update, :destroy]

  # GET /female20000mts
  # GET /female20000mts.json
        def index
     respond_to do |format|
       @female20000mt = Female20000mt.new
     format.html
      format.json { render json: Female20000mtsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female20000mt.import(params[:file])
redirect_to female20000mts_url, notice: "Importado correctamente"
end

  # GET /female20000mts/1
  # GET /female20000mts/1.json
  def show
  end

  # GET /female20000mts/new
  def new
    @female20000mt = Female20000mt.new
  end

  # GET /female20000mts/1/edit
  def edit
  end

  # POST /female20000mts
  # POST /female20000mts.json
  def create
    @female20000mt = Female20000mt.new(female20000mt_params)

    respond_to do |format|
      if @female20000mt.save
        format.html { redirect_to action:index, notice: 'Female20000mt was successfully created.' }
        format.json { render :show, status: :created, location: @female20000mt }
      else
        format.html { render :new }
        format.json { render json: @female20000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female20000mts/1
  # PATCH/PUT /female20000mts/1.json
  def update
    respond_to do |format|
      if @female20000mt.update(female20000mt_params)
        format.html { redirect_to @female20000mt, notice: 'Female20000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female20000mt }
      else
        format.html { render :edit }
        format.json { render json: @female20000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female20000mts/1
  # DELETE /female20000mts/1.json
  def destroy
    @female20000mt.destroy
    respond_to do |format|
      format.html { redirect_to female20000mts_url, notice: 'Female20000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female20000mt
      @female20000mt = Female20000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female20000mt_params
      params.require(:female20000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female20000mtHead_id)
    end
end
