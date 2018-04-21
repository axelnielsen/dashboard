class MaleDiscusThrowsController < ApplicationController
  before_action :set_male_discus_throw, only: [:show, :edit, :update, :destroy]

  # GET /male_discus_throws
  # GET /male_discus_throws.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: MaleDiscusThrowsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
MaleDiscusThrow.import(params[:file])
redirect_to male_discus_throws_url, notice: "Importado correctamente"
end

  # GET /male_discus_throws/1
  # GET /male_discus_throws/1.json
  def show
  end

  # GET /male_discus_throws/new
  def new
    @male_discus_throw = MaleDiscusThrow.new
  end

  # GET /male_discus_throws/1/edit
  def edit
  end

  # POST /male_discus_throws
  # POST /male_discus_throws.json
  def create
    @male_discus_throw = MaleDiscusThrow.new(male_discus_throw_params)

    respond_to do |format|
      if @male_discus_throw.save
        format.html { redirect_to @male_discus_throw, notice: 'Male discus throw was successfully created.' }
        format.json { render :show, status: :created, location: @male_discus_throw }
      else
        format.html { render :new }
        format.json { render json: @male_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_discus_throws/1
  # PATCH/PUT /male_discus_throws/1.json
  def update
    respond_to do |format|
      if @male_discus_throw.update(male_discus_throw_params)
        format.html { redirect_to @male_discus_throw, notice: 'Male discus throw was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_discus_throw }
      else
        format.html { render :edit }
        format.json { render json: @male_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_discus_throws/1
  # DELETE /male_discus_throws/1.json
  def destroy
    @male_discus_throw.destroy
    respond_to do |format|
      format.html { redirect_to male_discus_throws_url, notice: 'Male discus throw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_discus_throw
      @male_discus_throw = MaleDiscusThrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_discus_throw_params
      params.require(:male_discus_throw).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
