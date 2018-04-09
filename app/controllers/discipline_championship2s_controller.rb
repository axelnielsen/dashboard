class DisciplineChampionship2sController < ApplicationController
  before_action :set_discipline_championship2, only: [:show, :edit, :update, :destroy]

  # GET /discipline_championship2s
  # GET /discipline_championship2s.json
  def index
   respond_to do |format|
      format.html
      format.json { render json: Discipline_championship2sDatatable.new(view_context) }
    end
  end

  # GET /discipline_championship2s/1
  # GET /discipline_championship2s/1.json
  def show
  end

  # GET /discipline_championship2s/new
  def new
    @discipline_championship2 = DisciplineChampionship2.new
  end

  # GET /discipline_championship2s/1/edit
  def edit
  end

  # POST /discipline_championship2s
  # POST /discipline_championship2s.json
  def create
    @discipline_championship2 = DisciplineChampionship2.new(discipline_championship2_params)

    respond_to do |format|
      if @discipline_championship2.save
        format.html { redirect_to @discipline_championship2, notice: 'Discipline championship2 was successfully created.' }
        format.json { render :show, status: :created, location: @discipline_championship2 }
      else
        format.html { render :new }
        format.json { render json: @discipline_championship2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipline_championship2s/1
  # PATCH/PUT /discipline_championship2s/1.json
  def update
    respond_to do |format|
      if @discipline_championship2.update(discipline_championship2_params)
        format.html { redirect_to @discipline_championship2, notice: 'Discipline championship2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipline_championship2 }
      else
        format.html { render :edit }
        format.json { render json: @discipline_championship2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_championship2s/1
  # DELETE /discipline_championship2s/1.json
  def destroy
    @discipline_championship2.destroy
    respond_to do |format|
      format.html { redirect_to discipline_championship2s_url, notice: 'Discipline championship2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline_championship2
      @discipline_championship2 = DisciplineChampionship2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_championship2_params
      params.require(:discipline_championship2).permit(:name, :sex)
    end
end
