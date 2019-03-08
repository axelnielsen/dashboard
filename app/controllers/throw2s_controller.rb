class Throw2sController < ApplicationController
  before_action :set_throw2, only: [:show, :edit, :update, :destroy]

  # GET /throw2s
  # GET /throw2s.json
  def index
    @throw2s = Throw2.all
    respond_to do |format|
         format.html
         format.xlsx
  end
  end

  # GET /throw2s/1
  # GET /throw2s/1.json
  def show
  end

  # GET /throw2s/new
  def new
    @throw2 = Throw2.new
  end

  # GET /throw2s/1/edit
  def edit
  end

  # POST /throw2s
  # POST /throw2s.json
  def create
    @throw2 = Throw2.new(throw2_params)

    respond_to do |format|
      if @throw2.save
        format.html { redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' )}
        format.json { render :show, status: :created, location: @throw2 }
      else
        format.html { render :new }
        format.json { render json: @throw2.errors, status: :unprocessable_entity }
      end
    end
  end

def import
     Throw2.import(params[:file], params[:id])
    redirect_back(fallback_location: root_path, notice: 'Importado correctamente' )
end

  # PATCH/PUT /throw2s/1
  # PATCH/PUT /throw2s/1.json
  def update
    respond_to do |format|
      if @throw2.update(throw2_params)
        format.html { redirect_to @throw2, notice: 'Throw2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @throw2 }
      else
        format.html { render :edit }
        format.json { render json: @throw2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throw2s/1
  # DELETE /throw2s/1.json
  def destroy
    @throw2.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_throw2
      @throw2 = Throw2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def throw2_params
      params.require(:throw2).permit(:throw_head2_id, :athlete, :an, :club, :region, :first, :second, :third, :op, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
