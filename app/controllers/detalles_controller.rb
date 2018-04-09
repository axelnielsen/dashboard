class DetallesController < ApplicationController
  before_action :set_detalle, only: [:show, :edit, :update, :destroy]

  # GET /detalles
  # GET /detalles.json
  def index
      respond_to do |format|
      format.html
      format.xlsx
      format.json { render json: DetallesDatatable.new(view_context) }
    end
  end

  # GET /detalles/1
  # GET /detalles/1.json
  def show
  end

def import
Detalle.import(params[:file])
redirect_to detalles_url, notice: "Serie cargada exxitosamente"
end

  # GET /detalles/new
  def new
    @detalle = Detalle.new
  end

  # GET /detalles/1/edit
  def edit
  end

  # POST /detalles
  # POST /detalles.json
  def create
    @detalle = Detalle.new(detalle_params)

    respond_to do |format|
      if @detalle.save
        format.html { redirect_to @detalle, notice: 'Detalle was successfully created.' }
        format.json { render :show, status: :created, location: @detalle }
      else
        format.html { render :new }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles/1
  # PATCH/PUT /detalles/1.json
  def update
    respond_to do |format|
      if @detalle.update(detalle_params)
        format.html { redirect_to @detalle, notice: 'Detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle }
      else
        format.html { render :edit }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1
  # DELETE /detalles/1.json
  def destroy
    @detalle.destroy
    respond_to do |format|
      format.html { redirect_to detalles_url, notice: 'Detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle
      @detalle = Detalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_params
      params.require(:detalle).permit(:lugar, :marca, :pista, :atleta, :an, :club, :region, :pais, :serie)
    end
end
