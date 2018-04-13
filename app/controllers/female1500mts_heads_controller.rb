class Female1500mtsHeadsController < ApplicationController
  before_action :set_female1500mts_head, only: [:show, :edit, :update, :destroy]

  # GET /female1500mts_heads
  # GET /female1500mts_heads.json
  def index
    @female1500mts_heads = Female1500mtsHead.all
  end

  # GET /female1500mts_heads/1
  # GET /female1500mts_heads/1.json
  def show
  end

  # GET /female1500mts_heads/new
  def new
    @female1500mts_head = Female1500mtsHead.new
  end

  # GET /female1500mts_heads/1/edit
  def edit
  end

  # POST /female1500mts_heads
  # POST /female1500mts_heads.json
  def create
    @female1500mts_head = Female1500mtsHead.new(female1500mts_head_params)

    respond_to do |format|
      if @female1500mts_head.save
        format.html { redirect_to @female1500mts_head, notice: 'Female1500mts head was successfully created.' }
        format.json { render :show, status: :created, location: @female1500mts_head }
      else
        format.html { render :new }
        format.json { render json: @female1500mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female1500mts_heads/1
  # PATCH/PUT /female1500mts_heads/1.json
  def update
    respond_to do |format|
      if @female1500mts_head.update(female1500mts_head_params)
        format.html { redirect_to @female1500mts_head, notice: 'Female1500mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female1500mts_head }
      else
        format.html { render :edit }
        format.json { render json: @female1500mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female1500mts_heads/1
  # DELETE /female1500mts_heads/1.json
  def destroy
    @female1500mts_head.destroy
    respond_to do |format|
      format.html { redirect_to female1500mts_heads_url, notice: 'Female1500mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female1500mts_head
      @female1500mts_head = Female1500mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female1500mts_head_params
      params.require(:female1500mts_head).permit(:championship_id, :fecha, :hora)
    end
end
