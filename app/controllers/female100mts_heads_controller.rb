class Female100mtsHeadsController < ApplicationController
  before_action :set_female100mts_head, only: [:show, :edit, :update, :destroy]

  # GET /female100mts_heads
  # GET /female100mts_heads.json
  def index
    @female100mts_heads = Female100mtsHead.all
  end

  # GET /female100mts_heads/1
  # GET /female100mts_heads/1.json
  def show
  end

  # GET /female100mts_heads/new
  def new
    @female100mts_head = Female100mtsHead.new
  end

  # GET /female100mts_heads/1/edit
  def edit
  end

  # POST /female100mts_heads
  # POST /female100mts_heads.json
  def create
    @female100mts_head = Female100mtsHead.new(female100mts_head_params)

    respond_to do |format|
      if @female100mts_head.save
        format.html { redirect_to @female100mts_head, notice: 'Female100mts head was successfully created.' }
        format.json { render :show, status: :created, location: @female100mts_head }
      else
        format.html { render :new }
        format.json { render json: @female100mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female100mts_heads/1
  # PATCH/PUT /female100mts_heads/1.json
  def update
    respond_to do |format|
      if @female100mts_head.update(female100mts_head_params)
        format.html { redirect_to @female100mts_head, notice: 'Female100mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female100mts_head }
      else
        format.html { render :edit }
        format.json { render json: @female100mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female100mts_heads/1
  # DELETE /female100mts_heads/1.json
  def destroy
    @female100mts_head.destroy
    respond_to do |format|
      format.html { redirect_to female100mts_heads_url, notice: 'Female100mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female100mts_head
      @female100mts_head = Female100mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female100mts_head_params
      params.require(:female100mts_head).permit(:championship_id, :fecha, :hora)
    end
end
