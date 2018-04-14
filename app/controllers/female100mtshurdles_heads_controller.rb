class Female100mtshurdlesHeadsController < ApplicationController
  before_action :set_female100mtshurdles_head, only: [:show, :edit, :update, :destroy]

  # GET /female100mtshurdles_heads
  # GET /female100mtshurdles_heads.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: Female100mtshurdlesHeadsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female100mtshurdlesHead.import(params[:file])
redirect_to female100mtshurdles_heads_url, notice: "Importado correctamente"
end

  # GET /female100mtshurdles_heads/1
  # GET /female100mtshurdles_heads/1.json
  def show
  end

  # GET /female100mtshurdles_heads/new
  def new
    @female100mtshurdles_head = Female100mtshurdlesHead.new
  end

  # GET /female100mtshurdles_heads/1/edit
  def edit
  end

  # POST /female100mtshurdles_heads
  # POST /female100mtshurdles_heads.json
  def create
    @female100mtshurdles_head = Female100mtshurdlesHead.new(female100mtshurdles_head_params)

    respond_to do |format|
      if @female100mtshurdles_head.save
        format.html { redirect_to @female100mtshurdles_head, notice: 'Female100mtshurdles head was successfully created.' }
        format.json { render :show, status: :created, location: @female100mtshurdles_head }
      else
        format.html { render :new }
        format.json { render json: @female100mtshurdles_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female100mtshurdles_heads/1
  # PATCH/PUT /female100mtshurdles_heads/1.json
  def update
    respond_to do |format|
      if @female100mtshurdles_head.update(female100mtshurdles_head_params)
        format.html { redirect_to @female100mtshurdles_head, notice: 'Female100mtshurdles head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female100mtshurdles_head }
      else
        format.html { render :edit }
        format.json { render json: @female100mtshurdles_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female100mtshurdles_heads/1
  # DELETE /female100mtshurdles_heads/1.json
  def destroy
    @female100mtshurdles_head.destroy
    respond_to do |format|
      format.html { redirect_to female100mtshurdles_heads_url, notice: 'Female100mtshurdles head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female100mtshurdles_head
      @female100mtshurdles_head = Female100mtshurdlesHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female100mtshurdles_head_params
      params.require(:female100mtshurdles_head).permit(:championship_id, :fecha, :hora)
    end
end
