class SerieTypesController < ApplicationController
  before_action :set_serie_type, only: [:show, :edit, :update, :destroy]

  # GET /serie_types
  # GET /serie_types.json
  def index
    @serie_types = SerieType.all
  end

  # GET /serie_types/1
  # GET /serie_types/1.json
  def show
  end

  # GET /serie_types/new
  def new
    @serie_type = SerieType.new
  end

  # GET /serie_types/1/edit
  def edit
  end

  # POST /serie_types
  # POST /serie_types.json
  def create
    @serie_type = SerieType.new(serie_type_params)

    respond_to do |format|
      if @serie_type.save
        format.html { redirect_to @serie_type, notice: 'Serie type was successfully created.' }
        format.json { render :show, status: :created, location: @serie_type }
      else
        format.html { render :new }
        format.json { render json: @serie_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serie_types/1
  # PATCH/PUT /serie_types/1.json
  def update
    respond_to do |format|
      if @serie_type.update(serie_type_params)
        format.html { redirect_to @serie_type, notice: 'Serie type was successfully updated.' }
        format.json { render :show, status: :ok, location: @serie_type }
      else
        format.html { render :edit }
        format.json { render json: @serie_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serie_types/1
  # DELETE /serie_types/1.json
  def destroy
    @serie_type.destroy
    respond_to do |format|
      format.html { redirect_to serie_types_url, notice: 'Serie type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serie_type
      @serie_type = SerieType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serie_type_params
      params.require(:serie_type).permit(:name)
    end
end
