class Male200mtsHeadsController < ApplicationController
  before_action :set_male200mts_head, only: [:show, :edit, :update, :destroy]

  # GET /male200mts_heads
  # GET /male200mts_heads.json
  def index
    @male200mts_heads = Male200mtsHead.all
  end

  # GET /male200mts_heads/1
  # GET /male200mts_heads/1.json
  def show
  end

  # GET /male200mts_heads/new
  def new
    @male200mts_head = Male200mtsHead.new
  end

  # GET /male200mts_heads/1/edit
  def edit
  end

  # POST /male200mts_heads
  # POST /male200mts_heads.json
  def create
    @male200mts_head = Male200mtsHead.new(male200mts_head_params)

    respond_to do |format|
      if @male200mts_head.save
        format.html { redirect_to @male200mts_head, notice: 'Male200mts head was successfully created.' }
        format.json { render :show, status: :created, location: @male200mts_head }
      else
        format.html { render :new }
        format.json { render json: @male200mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male200mts_heads/1
  # PATCH/PUT /male200mts_heads/1.json
  def update
    respond_to do |format|
      if @male200mts_head.update(male200mts_head_params)
        format.html { redirect_to @male200mts_head, notice: 'Male200mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male200mts_head }
      else
        format.html { render :edit }
        format.json { render json: @male200mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male200mts_heads/1
  # DELETE /male200mts_heads/1.json
  def destroy
    @male200mts_head.destroy
    respond_to do |format|
      format.html { redirect_to male200mts_heads_url, notice: 'Male200mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male200mts_head
      @male200mts_head = Male200mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male200mts_head_params
      params.require(:male200mts_head).permit(:championship_id, :fecha, :hora)
    end
end
