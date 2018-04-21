class StartMaleDiscusThrowsController < ApplicationController
  before_action :set_start_male_discus_throw, only: [:show, :edit, :update, :destroy]

  # GET /start_male_discus_throws
  # GET /start_male_discus_throws.json
def index
     respond_to do |format|
     format.html
      format.json { render json: StartMaleDiscusThrowsDatatable.new(view_context) }
      format.xlsx
    end
end


  # GET /start_male_discus_throws/1
  # GET /start_male_discus_throws/1.json
  def show
  end

  # GET /start_male_discus_throws/new
  def new
    @start_male_discus_throw = StartMaleDiscusThrow.new
  end

  # GET /start_male_discus_throws/1/edit
  def edit
  end

  # POST /start_male_discus_throws
  # POST /start_male_discus_throws.json
  def create
    @start_male_discus_throw = StartMaleDiscusThrow.new(start_male_discus_throw_params)

    respond_to do |format|
      if @start_male_discus_throw.save
        format.html { redirect_to @start_male_discus_throw, notice: 'Start male discus throw was successfully created.' }
        format.json { render :show, status: :created, location: @start_male_discus_throw }
      else
        format.html { render :new }
        format.json { render json: @start_male_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_male_discus_throws/1
  # PATCH/PUT /start_male_discus_throws/1.json
  def update
    respond_to do |format|
      if @start_male_discus_throw.update(start_male_discus_throw_params)
        format.html { redirect_to @start_male_discus_throw, notice: 'Start male discus throw was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_male_discus_throw }
      else
        format.html { render :edit }
        format.json { render json: @start_male_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_male_discus_throws/1
  # DELETE /start_male_discus_throws/1.json
  def destroy
    @start_male_discus_throw.destroy
    respond_to do |format|
      format.html { redirect_to start_male_discus_throws_url, notice: 'Start male discus throw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_male_discus_throw
      @start_male_discus_throw = StartMaleDiscusThrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_male_discus_throw_params
      params.require(:start_male_discus_throw).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male_discus_throwStart_id)
    end
end
