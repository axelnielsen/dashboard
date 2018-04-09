class DisciplineDetailsController < ApplicationController
  before_action :set_discipline_detail, only: [:show, :edit, :update, :destroy]

  # GET /discipline_details
  # GET /discipline_details.json
  def index
    @discipline_details = DisciplineDetail.all
  end

  # GET /discipline_details/1
  # GET /discipline_details/1.json
  def show
  end

  # GET /discipline_details/new
  def new
    @discipline_detail = DisciplineDetail.new
  end

  # GET /discipline_details/1/edit
  def edit
  end

  # POST /discipline_details
  # POST /discipline_details.json
  def create
    @discipline_detail = DisciplineDetail.new(discipline_detail_params)

    respond_to do |format|
      if @discipline_detail.save
        format.html { redirect_to @discipline_detail, notice: 'Discipline detail was successfully created.' }
        format.json { render :show, status: :created, location: @discipline_detail }
      else
        format.html { render :new }
        format.json { render json: @discipline_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipline_details/1
  # PATCH/PUT /discipline_details/1.json
  def update
    respond_to do |format|
      if @discipline_detail.update(discipline_detail_params)
        format.html { redirect_to @discipline_detail, notice: 'Discipline detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipline_detail }
      else
        format.html { render :edit }
        format.json { render json: @discipline_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipline_details/1
  # DELETE /discipline_details/1.json
  def destroy
    @discipline_detail.destroy
    respond_to do |format|
      format.html { redirect_to discipline_details_url, notice: 'Discipline detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline_detail
      @discipline_detail = DisciplineDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_detail_params
      params.require(:discipline_detail).permit(:name, :value)
    end
end
