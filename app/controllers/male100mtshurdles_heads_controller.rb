class Male100mtshurdlesHeadsController < ApplicationController
  before_action :set_male100mtshurdles_head, only: [:show, :edit, :update, :destroy]

  # GET /male100mtshurdles_heads
  # GET /male100mtshurdles_heads.json
  def index
    @male100mtshurdles_heads = Male100mtshurdlesHead.all
  end

  # GET /male100mtshurdles_heads/1
  # GET /male100mtshurdles_heads/1.json
  def show
  end

  # GET /male100mtshurdles_heads/new
  def new
    @male100mtshurdles_head = Male100mtshurdlesHead.new
  end

  # GET /male100mtshurdles_heads/1/edit
  def edit
  end

  # POST /male100mtshurdles_heads
  # POST /male100mtshurdles_heads.json
  def create
    @male100mtshurdles_head = Male100mtshurdlesHead.new(male100mtshurdles_head_params)

    respond_to do |format|
      if @male100mtshurdles_head.save
        format.html { redirect_to @male100mtshurdles_head, notice: 'Male100mtshurdles head was successfully created.' }
        format.json { render :show, status: :created, location: @male100mtshurdles_head }
      else
        format.html { render :new }
        format.json { render json: @male100mtshurdles_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male100mtshurdles_heads/1
  # PATCH/PUT /male100mtshurdles_heads/1.json
  def update
    respond_to do |format|
      if @male100mtshurdles_head.update(male100mtshurdles_head_params)
        format.html { redirect_to @male100mtshurdles_head, notice: 'Male100mtshurdles head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male100mtshurdles_head }
      else
        format.html { render :edit }
        format.json { render json: @male100mtshurdles_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male100mtshurdles_heads/1
  # DELETE /male100mtshurdles_heads/1.json
  def destroy
    @male100mtshurdles_head.destroy
    respond_to do |format|
      format.html { redirect_to male100mtshurdles_heads_url, notice: 'Male100mtshurdles head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male100mtshurdles_head
      @male100mtshurdles_head = Male100mtshurdlesHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male100mtshurdles_head_params
      params.require(:male100mtshurdles_head).permit(:championship_id, :fecha, :hora)
    end
end
