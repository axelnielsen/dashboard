class Male20000mtsController < ApplicationController
  before_action :set_male20000mt, only: [:show, :edit, :update, :destroy]

  # GET /male20000mts
  # GET /male20000mts.json
  def index
    @male20000mts = Male20000mt.all
  end

  # GET /male20000mts/1
  # GET /male20000mts/1.json
  def show
  end

  # GET /male20000mts/new
  def new
    @male20000mt = Male20000mt.new
  end

  # GET /male20000mts/1/edit
  def edit
  end

  # POST /male20000mts
  # POST /male20000mts.json
  def create
    @male20000mt = Male20000mt.new(male20000mt_params)

    respond_to do |format|
      if @male20000mt.save
        format.html { redirect_to @male20000mt, notice: 'Male20000mt was successfully created.' }
        format.json { render :show, status: :created, location: @male20000mt }
      else
        format.html { render :new }
        format.json { render json: @male20000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male20000mts/1
  # PATCH/PUT /male20000mts/1.json
  def update
    respond_to do |format|
      if @male20000mt.update(male20000mt_params)
        format.html { redirect_to @male20000mt, notice: 'Male20000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male20000mt }
      else
        format.html { render :edit }
        format.json { render json: @male20000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male20000mts/1
  # DELETE /male20000mts/1.json
  def destroy
    @male20000mt.destroy
    respond_to do |format|
      format.html { redirect_to male20000mts_url, notice: 'Male20000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male20000mt
      @male20000mt = Male20000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male20000mt_params
      params.require(:male20000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male20000mtHead_id)
    end
end
