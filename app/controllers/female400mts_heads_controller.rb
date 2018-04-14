class Female400mtsHeadsController < ApplicationController
  before_action :set_female400mts_head, only: [:show, :edit, :update, :destroy]

  # GET /female400mts_heads
  # GET /female400mts_heads.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: Female400mtsHeadsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
Female400mtsHead.import(params[:file])
redirect_to female400mts_heads_url, notice: "Importado correctamente"
end

  # GET /female400mts_heads/1
  # GET /female400mts_heads/1.json
  def show
  end

  # GET /female400mts_heads/new
  def new
    @female400mts_head = Female400mtsHead.new
  end

  # GET /female400mts_heads/1/edit
  def edit
  end

  # POST /female400mts_heads
  # POST /female400mts_heads.json
  def create
    @female400mts_head = Female400mtsHead.new(female400mts_head_params)

    respond_to do |format|
      if @female400mts_head.save
        format.html { redirect_to @female400mts_head, notice: 'Female400mts head was successfully created.' }
        format.json { render :show, status: :created, location: @female400mts_head }
      else
        format.html { render :new }
        format.json { render json: @female400mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female400mts_heads/1
  # PATCH/PUT /female400mts_heads/1.json
  def update
    respond_to do |format|
      if @female400mts_head.update(female400mts_head_params)
        format.html { redirect_to @female400mts_head, notice: 'Female400mts head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female400mts_head }
      else
        format.html { render :edit }
        format.json { render json: @female400mts_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female400mts_heads/1
  # DELETE /female400mts_heads/1.json
  def destroy
    @female400mts_head.destroy
    respond_to do |format|
      format.html { redirect_to female400mts_heads_url, notice: 'Female400mts head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female400mts_head
      @female400mts_head = Female400mtsHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female400mts_head_params
      params.require(:female400mts_head).permit(:championship_id, :fecha, :hora)
    end
end
