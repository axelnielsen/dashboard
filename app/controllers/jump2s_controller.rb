class Jump2sController < ApplicationController
  before_action :set_jump2, only: [:show, :edit, :update, :destroy]

  # GET /jump2s
  # GET /jump2s.json
  def index
    @jump2s = Jump2.all
  end

  # GET /jump2s/1
  # GET /jump2s/1.json
  def show
  end

  # GET /jump2s/new
  def new
    @jump2 = Jump2.new
  end

  # GET /jump2s/1/edit
  def edit
  end

  # POST /jump2s
  # POST /jump2s.json
  def create
    @jump2 = Jump2.new(jump2_params)

    respond_to do |format|
      if @jump2.save
        format.html {redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' )}
        format.json { render :show, status: :created, location: @jump2 }
      else
        format.html { render :new }
        format.json { render json: @jump2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jump2s/1
  # PATCH/PUT /jump2s/1.json
  def update
    respond_to do |format|
      if @jump2.update(jump2_params)
        format.html {redirect_back(fallback_location: root_path, notice: 'Actualizado exitosamente' ) }
        format.json { render :show, status: :ok, location: @jump2 }
      else
        format.html { render :edit }
        format.json { render json: @jump2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jump2s/1
  # DELETE /jump2s/1.json
  def destroy
    @jump2.destroy
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jump2
      @jump2 = Jump2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jump2_params
      params.require(:jump2).permit(:jump_head2_id, :athlete, :club, :first, :vvfirst, :second, :vvsecond, :third, :vvthird, :op, :fourth, :vvfourth, :fifth, :vvfifth, :sixth, :vvsixth, :achievement, :place , :an, :points , :region)
    end
end
