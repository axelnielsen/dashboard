class Female3000mtsController < ApplicationController
  before_action :set_female3000mt, only: [:show, :edit, :update, :destroy]

  # GET /female3000mts
  # GET /female3000mts.json
  def index
    @female3000mts = Female3000mt.all
  end

  # GET /female3000mts/1
  # GET /female3000mts/1.json
  def show
  end

  # GET /female3000mts/new
  def new
    @female3000mt = Female3000mt.new
  end

  # GET /female3000mts/1/edit
  def edit
  end

  # POST /female3000mts
  # POST /female3000mts.json
  def create
    @female3000mt = Female3000mt.new(female3000mt_params)

    respond_to do |format|
      if @female3000mt.save
        format.html { redirect_to @female3000mt, notice: 'Female3000mt was successfully created.' }
        format.json { render :show, status: :created, location: @female3000mt }
      else
        format.html { render :new }
        format.json { render json: @female3000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female3000mts/1
  # PATCH/PUT /female3000mts/1.json
  def update
    respond_to do |format|
      if @female3000mt.update(female3000mt_params)
        format.html { redirect_to @female3000mt, notice: 'Female3000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @female3000mt }
      else
        format.html { render :edit }
        format.json { render json: @female3000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female3000mts/1
  # DELETE /female3000mts/1.json
  def destroy
    @female3000mt.destroy
    respond_to do |format|
      format.html { redirect_to female3000mts_url, notice: 'Female3000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female3000mt
      @female3000mt = Female3000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female3000mt_params
      params.require(:female3000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :female3000mtHead_id)
    end
end
