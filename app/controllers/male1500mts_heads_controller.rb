class Male1500mtsHeadsController < ApplicationController
  before_action :set_male1500mts_head, only: [:show, :edit, :update, :destroy]

  # GET /male1500mts_heads
  # GET /male1500mts_heads.json
  def index
    @male1500mts_heads = Male1500mtsHead.all
  end

  # GET /male1500mts_heads/1
  # GET /male1500mts_heads/1.json
  def show
  end

  # GET /male1500mts_heads/new
  def new
    @male1500mts_head = Male1500mtsHead.new
  end

  # GET /male1500mts_heads/1/edit
  def edit
  end

  # POST /male1500mts_heads
  # POST /male1500mts_heads.json
  def create
    @male1500mts_head = Male1500mtsHead.new(male1500mts_head_params)

    respond_to do |format|
      if @male1500mts_head.save
        format.html { redirect_to @male1500mts_head, notice: 'Male1500mts head was successfully created.' }
        format.json { render :show, status: :created, location: @male1500mts_head }
      else
        format.html { render :new }
        format.json { render json: @male1500mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male1500mts_heads/1
  # PATCH/PUT /male1500mts_heads/1.json
  def update
    respond_to do |format|
      if @male1500mts_head.update(male1500mts_head_params)
        format.html { redirect_to @male1500mts_head, notice: 'Male1500mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male1500mts_head }
      else
        format.html { render :edit }
        format.json { render json: @male1500mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male1500mts_heads/1
  # DELETE /male1500mts_heads/1.json
  def destroy
    @male1500mts_head.destroy
    respond_to do |format|
      format.html { redirect_to male1500mts_heads_url, notice: 'Male1500mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male1500mts_head
      @male1500mts_head = Male1500mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male1500mts_head_params
      params.require(:male1500mts_head).permit(:championship_id, :fecha, :hora)
    end
end
