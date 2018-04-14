class FemaleJavelinHeadsController < ApplicationController
  before_action :set_female_javelin_head, only: [:show, :edit, :update, :destroy]

  # GET /female_javelin_heads
  # GET /female_javelin_heads.json
  def index
     respond_to do |format|
     format.html
      format.json { render json: FemaleJavelinHeadsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
FemalejavelinHead.import(params[:file])
redirect_to female_javelin_heads_url, notice: "Importado correctamente"
end

  # GET /female_javelin_heads/1
  # GET /female_javelin_heads/1.json
  def show
  end

  # GET /female_javelin_heads/new
  def new
    @female_javelin_head = FemaleJavelinHead.new
  end

  # GET /female_javelin_heads/1/edit
  def edit
  end

  # POST /female_javelin_heads
  # POST /female_javelin_heads.json
  def create
    @female_javelin_head = FemaleJavelinHead.new(female_javelin_head_params)

    respond_to do |format|
      if @female_javelin_head.save
        format.html { redirect_to @female_javelin_head, notice: 'Female javelin head was successfully created.' }
        format.json { render :show, status: :created, location: @female_javelin_head }
      else
        format.html { render :new }
        format.json { render json: @female_javelin_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_javelin_heads/1
  # PATCH/PUT /female_javelin_heads/1.json
  def update
    respond_to do |format|
      if @female_javelin_head.update(female_javelin_head_params)
        format.html { redirect_to @female_javelin_head, notice: 'Female javelin head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_javelin_head }
      else
        format.html { render :edit }
        format.json { render json: @female_javelin_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_javelin_heads/1
  # DELETE /female_javelin_heads/1.json
  def destroy
    @female_javelin_head.destroy
    respond_to do |format|
      format.html { redirect_to female_javelin_heads_url, notice: 'Female javelin head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_javelin_head
      @female_javelin_head = FemaleJavelinHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_javelin_head_params
      params.require(:female_javelin_head).permit(:championship_id, :fecha, :hora)
    end
end
