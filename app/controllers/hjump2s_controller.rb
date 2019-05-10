class Hjump2sController < ApplicationController
  before_action :set_hjump2, only: [:show, :edit, :update, :destroy]

  # GET /hjump2s
  # GET /hjump2s.json
  def index
     if params[:j].present?
       @hjump2s = Hjump2.joins(:hjump_head2).where("hjump_head2s.competition_id ="+params[:j])

    else
  
    @hjump2s = Hjump2.all
    end
    respond_to do |format|
         format.html
         format.xlsx
  end
  end

  # GET /hjump2s/1
  # GET /hjump2s/1.json
  def show
  end

  # GET /hjump2s/new
  def new
    @hjump2 = Hjump2.new
  end

  # GET /hjump2s/1/edit
  def edit
  end

  # POST /hjump2s
  # POST /hjump2s.json
  def create
    @hjump2 = Hjump2.new(hjump2_params)

    respond_to do |format|
      if @hjump2.save
        format.html {  redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' ) }
        format.json { render :show, status: :created, location: @hjump2 }
      else
        format.html { render :new }
        format.json { render json: @hjump2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hjump2s/1
  # PATCH/PUT /hjump2s/1.json
  def update
    respond_to do |format|
      if @hjump2.update(hjump2_params)
        format.html { redirect_to @hjump2, notice: 'Hjump2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @hjump2 }
      else
        format.html { render :edit }
        format.json { render json: @hjump2.errors, status: :unprocessable_entity }
      end
    end
  end


def import
     Hjump2.import(params[:file], params[:id])
    redirect_back(fallback_location: root_path, notice: 'Importado correctamente' )
end

  # DELETE /hjump2s/1
  # DELETE /hjump2s/1.json
  def destroy
    @hjump2.destroy
    respond_to do |format|
      format.html {  redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' ) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hjump2
      @hjump2 = Hjump2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hjump2_params
      params.require(:hjump2).permit(:hjump_head2_id, :athlete, :an, :region, :club, :achievement, :place, :bestAchievement)
    end
end
