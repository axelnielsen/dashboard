class FemaleShotPutsController < ApplicationController
  before_action :set_female_shot_put, only: [:show, :edit, :update, :destroy]

  # GET /female_shot_puts
  # GET /female_shot_puts.json
 def index
     respond_to do |format|
       @female_shot_put = FemaleShotPut.new
     format.html
      format.json { render json: FemaleShotPutsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
FemaleShotPut.import(params[:file])
redirect_to start_female_shot_puts_url, notice: "Importado correctamente"
end

  # GET /female_shot_puts/1
  # GET /female_shot_puts/1.json
  def show
  end

  # GET /female_shot_puts/new
  def new
    @female_shot_put = FemaleShotPut.new
  end

  # GET /female_shot_puts/1/edit
  def edit
  end

  # POST /female_shot_puts
  # POST /female_shot_puts.json
  def create
    @female_shot_put = FemaleShotPut.new(female_shot_put_params)

    respond_to do |format|
      if @female_shot_put.save
        format.html { redirect_to action:index, notice: 'Female shot put was successfully created.' }
        format.json { render :show, status: :created, location: @female_shot_put }
      else
        format.html { render :new }
        format.json { render json: @female_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_shot_puts/1
  # PATCH/PUT /female_shot_puts/1.json
  def update
    respond_to do |format|
      if @female_shot_put.update(female_shot_put_params)
        format.html { redirect_to @female_shot_put, notice: 'Female shot put was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_shot_put }
      else
        format.html { render :edit }
        format.json { render json: @female_shot_put.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_shot_puts/1
  # DELETE /female_shot_puts/1.json
  def destroy
    @female_shot_put.destroy
    respond_to do |format|
      format.html { redirect_to female_shot_puts_url, notice: 'Female shot put was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_shot_put
      @female_shot_put = FemaleShotPut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_shot_put_params
      params.require(:female_shot_put).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
