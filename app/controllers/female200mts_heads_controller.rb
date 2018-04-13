class Female200mtsHeadsController < ApplicationController
  before_action :set_female200mts_head, only: [:show, :edit, :update, :destroy]

  # GET /female200mts_heads
  # GET /female200mts_heads.json
  def index
    @female200mts_heads = Female200mtsHead.all
  end

  # GET /female200mts_heads/1
  # GET /female200mts_heads/1.json
  def show
  end

  # GET /female200mts_heads/new
  def new
    @female200mts_head = Female200mtsHead.new
  end

  # GET /female200mts_heads/1/edit
  def edit
  end

  # POST /female200mts_heads
  # POST /female200mts_heads.json
  def create
    @female200mts_head = Female200mtsHead.new(female200mts_head_params)

    respond_to do |format|
      if @female200mts_head.save
        format.html { redirect_to @female200mts_head, notice: 'Female200mts head was successfully created.' }
        format.json { render :show, status: :created, location: @female200mts_head }
      else
        format.html { render :new }
        format.json { render json: @female200mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female200mts_heads/1
  # PATCH/PUT /female200mts_heads/1.json
  def update
    respond_to do |format|
      if @female200mts_head.update(female200mts_head_params)
        format.html { redirect_to @female200mts_head, notice: 'Female200mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female200mts_head }
      else
        format.html { render :edit }
        format.json { render json: @female200mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female200mts_heads/1
  # DELETE /female200mts_heads/1.json
  def destroy
    @female200mts_head.destroy
    respond_to do |format|
      format.html { redirect_to female200mts_heads_url, notice: 'Female200mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female200mts_head
      @female200mts_head = Female200mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female200mts_head_params
      params.require(:female200mts_head).permit(:championship_id, :fecha, :hora)
    end
end
