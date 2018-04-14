class FemaleDiscusThrowsController < ApplicationController
  before_action :set_female_discus_throw, only: [:show, :edit, :update, :destroy]

  # GET /female_discus_throws
  # GET /female_discus_throws.json
   def index
     respond_to do |format|
     format.html
      format.json { render json: FemaleDiscusThrowsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
FemaleDiscusThrow.import(params[:file])
redirect_to female_discus_throws_url, notice: "Importado correctamente"
end
  # GET /female_discus_throws/1
  # GET /female_discus_throws/1.json
  def show
  end

  # GET /female_discus_throws/new
  def new
    @female_discus_throw = FemaleDiscusThrow.new
  end

  # GET /female_discus_throws/1/edit
  def edit
  end

  # POST /female_discus_throws
  # POST /female_discus_throws.json
  def create
    @female_discus_throw = FemaleDiscusThrow.new(female_discus_throw_params)

    respond_to do |format|
      if @female_discus_throw.save
        format.html { redirect_to @female_discus_throw, notice: 'Female discus throw was successfully created.' }
        format.json { render :show, status: :created, location: @female_discus_throw }
      else
        format.html { render :new }
        format.json { render json: @female_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_discus_throws/1
  # PATCH/PUT /female_discus_throws/1.json
  def update
    respond_to do |format|
      if @female_discus_throw.update(female_discus_throw_params)
        format.html { redirect_to @female_discus_throw, notice: 'Female discus throw was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_discus_throw }
      else
        format.html { render :edit }
        format.json { render json: @female_discus_throw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_discus_throws/1
  # DELETE /female_discus_throws/1.json
  def destroy
    @female_discus_throw.destroy
    respond_to do |format|
      format.html { redirect_to female_discus_throws_url, notice: 'Female discus throw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_discus_throw
      @female_discus_throw = FemaleDiscusThrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_discus_throw_params
      params.require(:female_discus_throw).permit(:number, :name, :an, :club, :region, :first, :second, :third, :fourth, :fifth, :sixth, :achievement, :place)
    end
end
