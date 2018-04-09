class SerieDetallesController < ApplicationController
  before_action :set_serie_detalle, only: [:show, :edit, :update, :destroy]

  # GET /serie_detalles
  # GET /serie_detalles.json
  def index
     respond_to do |format|
      format.html
      format.json { render json: SerieDetallesDatatable.new(view_context) }
    end
  end

  # GET /serie_detalles/1
  # GET /serie_detalles/1.json
  def show
  end

  # GET /serie_detalles/new
  def new
    @serie_detalle = SerieDetalle.new
  end

  # GET /serie_detalles/1/edit
  def edit
  end

  # POST /serie_detalles
  # POST /serie_detalles.json
  def create
    @serie_detalle = SerieDetalle.new(serie_detalle_params)

    respond_to do |format|
      if @serie_detalle.save
        format.html { redirect_to @serie_detalle, notice: 'Serie detalle was successfully created.' }
        format.json { render :show, status: :created, location: @serie_detalle }
      else
        format.html { render :new }
        format.json { render json: @serie_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serie_detalles/1
  # PATCH/PUT /serie_detalles/1.json
  def update
    respond_to do |format|
      if @serie_detalle.update(serie_detalle_params)
        format.html { redirect_to @serie_detalle, notice: 'Serie detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @serie_detalle }
      else
        format.html { render :edit }
        format.json { render json: @serie_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serie_detalles/1
  # DELETE /serie_detalles/1.json
  def destroy
    @serie_detalle.destroy
    respond_to do |format|
      format.html { redirect_to serie_detalles_url, notice: 'Serie detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serie_detalle
      @serie_detalle = SerieDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serie_detalle_params
      params.require(:serie_detalle).permit(:lugar, :marca, :pista, :atleta, :an, :club, :region, :pais)
    end
end
