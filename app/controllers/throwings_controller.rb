class ThrowingsController < ApplicationController
  before_action :set_throwing, only: [:show, :edit, :update, :destroy]

  # GET /throwings
  # GET /throwings.json
  def index
      respond_to do |format|
     format.html
      format.json { render json: ThrowingsDatatable.new(view_context) }
      format.xlsx
    end
  end
def import
Throwing.import(params[:file])
redirect_to Jump_url, notice: "Importado correctamente"
end
  # GET /throwings/1
  # GET /throwings/1.json
  def show
  end

  # GET /throwings/new
  def new
    @throwing = Throwing.new
  end

  # GET /throwings/1/edit
  def edit
  end

  # POST /throwings
  # POST /throwings.json
  def create
    @throwing = Throwing.new(throwing_params)

    respond_to do |format|
      if @throwing.save
        format.html { redirect_to @throwing, notice: 'Throwing was successfully created.' }
        format.json { render :show, status: :created, location: @throwing }
      else
        format.html { render :new }
        format.json { render json: @throwing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /throwings/1
  # PATCH/PUT /throwings/1.json
  def update
    respond_to do |format|
      if @throwing.update(throwing_params)
        format.html { redirect_to @throwing, notice: 'Throwing was successfully updated.' }
        format.json { render :show, status: :ok, location: @throwing }
      else
        format.html { render :edit }
        format.json { render json: @throwing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throwings/1
  # DELETE /throwings/1.json
  def destroy
    @throwing.destroy
    respond_to do |format|
      format.html { redirect_to throwings_url, notice: 'Throwing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_throwing
      @throwing = Throwing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def throwing_params
      params.require(:throwing).permit(:number, :name, :an, :club, :reg, :country, :first, :seconnd, :third, :op, :fourth, :fift, :sixth, :achievement, :place)
    end
end
