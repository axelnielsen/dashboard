class Male100mtsHeadsController < ApplicationController
  before_action :set_male100mts_head, only: [:show, :edit, :update, :destroy]

  # GET /male100mts_heads
  # GET /male100mts_heads.json
  def index
    @male100mts_heads = Male100mtsHead.all
  end

  # GET /male100mts_heads/1
  # GET /male100mts_heads/1.json
  def show
  end

  # GET /male100mts_heads/new
  def new
    @male100mts_head = Male100mtsHead.new
  end

  # GET /male100mts_heads/1/edit
  def edit
  end

  # POST /male100mts_heads
  # POST /male100mts_heads.json
  def create
    @male100mts_head = Male100mtsHead.new(male100mts_head_params)

    respond_to do |format|
      if @male100mts_head.save
        format.html { redirect_to @male100mts_head, notice: 'Male100mts head was successfully created.' }
        format.json { render :show, status: :created, location: @male100mts_head }
      else
        format.html { render :new }
        format.json { render json: @male100mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male100mts_heads/1
  # PATCH/PUT /male100mts_heads/1.json
  def update
    respond_to do |format|
      if @male100mts_head.update(male100mts_head_params)
        format.html { redirect_to @male100mts_head, notice: 'Male100mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male100mts_head }
      else
        format.html { render :edit }
        format.json { render json: @male100mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male100mts_heads/1
  # DELETE /male100mts_heads/1.json
  def destroy
    @male100mts_head.destroy
    respond_to do |format|
      format.html { redirect_to male100mts_heads_url, notice: 'Male100mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male100mts_head
      @male100mts_head = Male100mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male100mts_head_params
      params.require(:male100mts_head).permit(:championship_id, :fecha, :hora)
    end
end
