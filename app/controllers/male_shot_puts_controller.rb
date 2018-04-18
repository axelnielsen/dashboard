class MaleShotPutsController < ApplicationController
  before_action :set_male_shot_put, only: [:show, :edit, :update, :destroy]

  # GET /male_shot_puts
  # GET /male_shot_puts.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: MaleShotPutsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleShotPut.import(params[:file])
redirect_to start_male_shot_puts_url, notice: "Importado correctamente"
end

  # GET /male_shot_puts/1
  # GET /male_shot_puts/1.json
  def show
  end

  # GET /male_shot_puts/new
  def new
    @male_shot_put = MaleShotPut.new
  end

  # GET /male_shot_puts/1/edit
  def edit
  end

  # POST /male_shot_puts
  # POST /male_shot_puts.json
  def create
    @male_shot_put = MaleShotPut.new(male_shot_put_params)

    respond_to do |format|
      if @male_shot_put.save
        format.html { redirect_to @male_shot_put, notice: 'Male shot put was successfully created.' }
        format.json { render :show, status: :created, location: @male_shot_put }
      else
        format.html { render :new }
        format.json { render json: @male_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_shot_puts/1
  # PATCH/PUT /male_shot_puts/1.json
  def update
    respond_to do |format|
      if @male_shot_put.update(male_shot_put_params)
        format.html { redirect_to @male_shot_put, notice: 'Male shot put was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_shot_put }
      else
        format.html { render :edit }
        format.json { render json: @male_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_shot_puts/1
  # DELETE /male_shot_puts/1.json
  def destroy
    @male_shot_put.destroy
    respond_to do |format|
      format.html { redirect_to male_shot_puts_url, notice: 'Male shot put was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_shot_put
      @male_shot_put = MaleShotPut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_shot_put_params
      params.require(:male_shot_put).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
