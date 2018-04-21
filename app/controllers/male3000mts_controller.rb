class Male3000mtsController < ApplicationController
  before_action :set_male3000mt, only: [:show, :edit, :update, :destroy]

  # GET /male3000mts
  # GET /male3000mts.json
  def index
    @male3000mts = Male3000mt.all
  end

  # GET /male3000mts/1
  # GET /male3000mts/1.json
  def show
  end

  # GET /male3000mts/new
  def new
    @male3000mt = Male3000mt.new
  end

  # GET /male3000mts/1/edit
  def edit
  end

  # POST /male3000mts
  # POST /male3000mts.json
  def create
    @male3000mt = Male3000mt.new(male3000mt_params)

    respond_to do |format|
      if @male3000mt.save
        format.html { redirect_to @male3000mt, notice: 'Male3000mt was successfully created.' }
        format.json { render :show, status: :created, location: @male3000mt }
      else
        format.html { render :new }
        format.json { render json: @male3000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male3000mts/1
  # PATCH/PUT /male3000mts/1.json
  def update
    respond_to do |format|
      if @male3000mt.update(male3000mt_params)
        format.html { redirect_to @male3000mt, notice: 'Male3000mt was successfully updated.' }
        format.json { render :show, status: :ok, location: @male3000mt }
      else
        format.html { render :edit }
        format.json { render json: @male3000mt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male3000mts/1
  # DELETE /male3000mts/1.json
  def destroy
    @male3000mt.destroy
    respond_to do |format|
      format.html { redirect_to male3000mts_url, notice: 'Male3000mt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male3000mt
      @male3000mt = Male3000mt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male3000mt_params
      params.require(:male3000mt).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :male3000mtHead_id)
    end
end
