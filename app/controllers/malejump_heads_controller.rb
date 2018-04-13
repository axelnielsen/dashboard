class MalejumpHeadsController < ApplicationController
  before_action :set_malejump_head, only: [:show, :edit, :update, :destroy]

  # GET /malejump_heads
  # GET /malejump_heads.json
  def index
    @malejump_heads = MalejumpHead.all
  end

  # GET /malejump_heads/1
  # GET /malejump_heads/1.json
  def show
  end

  # GET /malejump_heads/new
  def new
    @malejump_head = MalejumpHead.new
  end

  # GET /malejump_heads/1/edit
  def edit
  end

  # POST /malejump_heads
  # POST /malejump_heads.json
  def create
    @malejump_head = MalejumpHead.new(malejump_head_params)

    respond_to do |format|
      if @malejump_head.save
        format.html { redirect_to @malejump_head, notice: 'Malejump head was successfully created.' }
        format.json { render :show, status: :created, location: @malejump_head }
      else
        format.html { render :new }
        format.json { render json: @malejump_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malejump_heads/1
  # PATCH/PUT /malejump_heads/1.json
  def update
    respond_to do |format|
      if @malejump_head.update(malejump_head_params)
        format.html { redirect_to @malejump_head, notice: 'Malejump head was successfully updated.' }
        format.json { render :show, status: :ok, location: @malejump_head }
      else
        format.html { render :edit }
        format.json { render json: @malejump_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malejump_heads/1
  # DELETE /malejump_heads/1.json
  def destroy
    @malejump_head.destroy
    respond_to do |format|
      format.html { redirect_to malejump_heads_url, notice: 'Malejump head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malejump_head
      @malejump_head = MalejumpHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malejump_head_params
      params.require(:malejump_head).permit(:championship_id, :fecha, :hora)
    end
end
