class DisciplineChampionshipsController < ApplicationController
  before_action :set_discipline_championship, only: [:show, :edit, :update, :destroy]

  # GET /discipline_championships
  # GET /discipline_championships.json
  def index
    @discipline_championships = DisciplineChampionship.all
  end

  # GET /discipline_championships/1
  # GET /discipline_championships/1.json
  def show
  end

  # GET /discipline_championships/new
  def new
    @discipline_championship = DisciplineChampionship.new
  end

  # GET /discipline_championships/1/edit
  def edit
  end

  # POST /discipline_championships
  # POST /discipline_championships.json
  def create
    @discipline_championship = DisciplineChampionship.new(discipline_championship_params)

    respond_to do |format|
      if @discipline_championship.save
        format.html { redirect_to @discipline_championship, notice: 'Discipline championship was successfully created.' }
        format.json { render :show, status: :created, location: @discipline_championship }
      else
        format.html { render :new }
        format.json { render json: @discipline_championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipline_championships/1
  # PATCH/PUT /discipline_championships/1.json
  def update
    respond_to do |format|
      if @discipline_championship.update(discipline_championship_params)
        format.html { redirect_to @discipline_championship, notice: 'Discipline championship was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipline_championship }
      else
        format.html { render :edit }
        format.json { render json: @discipline_championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_championships/1
  # DELETE /discipline_championships/1.json
  def destroy
    @discipline_championship.destroy
    respond_to do |format|
      format.html { redirect_to discipline_championships_url, notice: 'Discipline championship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline_championship
      @discipline_championship = DisciplineChampionship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_championship_params
      params.require(:discipline_championship).permit(:idChampionship, :idDiscipline)
    end
end
