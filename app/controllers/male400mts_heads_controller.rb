class Male400mtsHeadsController < ApplicationController
  before_action :set_male400mts_head, only: [:show, :edit, :update, :destroy]

  # GET /male400mts_heads
  # GET /male400mts_heads.json
  def index
    @male400mts_heads = Male400mtsHead.all
  end

  # GET /male400mts_heads/1
  # GET /male400mts_heads/1.json
  def show
  end

  # GET /male400mts_heads/new
  def new
    @male400mts_head = Male400mtsHead.new
  end

  # GET /male400mts_heads/1/edit
  def edit
  end

  # POST /male400mts_heads
  # POST /male400mts_heads.json
  def create
    @male400mts_head = Male400mtsHead.new(male400mts_head_params)

    respond_to do |format|
      if @male400mts_head.save
        format.html { redirect_to @male400mts_head, notice: 'Male400mts head was successfully created.' }
        format.json { render :show, status: :created, location: @male400mts_head }
      else
        format.html { render :new }
        format.json { render json: @male400mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male400mts_heads/1
  # PATCH/PUT /male400mts_heads/1.json
  def update
    respond_to do |format|
      if @male400mts_head.update(male400mts_head_params)
        format.html { redirect_to @male400mts_head, notice: 'Male400mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male400mts_head }
      else
        format.html { render :edit }
        format.json { render json: @male400mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male400mts_heads/1
  # DELETE /male400mts_heads/1.json
  def destroy
    @male400mts_head.destroy
    respond_to do |format|
      format.html { redirect_to male400mts_heads_url, notice: 'Male400mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male400mts_head
      @male400mts_head = Male400mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male400mts_head_params
      params.require(:male400mts_head).permit(:championship_id, :fecha, :hora)
    end
end
