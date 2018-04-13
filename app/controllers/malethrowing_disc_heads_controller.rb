class MalethrowingDiscHeadsController < ApplicationController
  before_action :set_malethrowing_disc_head, only: [:show, :edit, :update, :destroy]

  # GET /malethrowing_disc_heads
  # GET /malethrowing_disc_heads.json
  def index
    @malethrowing_disc_heads = MalethrowingDiscHead.all
  end

  # GET /malethrowing_disc_heads/1
  # GET /malethrowing_disc_heads/1.json
  def show
  end

  # GET /malethrowing_disc_heads/new
  def new
    @malethrowing_disc_head = MalethrowingDiscHead.new
  end

  # GET /malethrowing_disc_heads/1/edit
  def edit
  end

  # POST /malethrowing_disc_heads
  # POST /malethrowing_disc_heads.json
  def create
    @malethrowing_disc_head = MalethrowingDiscHead.new(malethrowing_disc_head_params)

    respond_to do |format|
      if @malethrowing_disc_head.save
        format.html { redirect_to @malethrowing_disc_head, notice: 'Malethrowing disc head was successfully created.' }
        format.json { render :show, status: :created, location: @malethrowing_disc_head }
      else
        format.html { render :new }
        format.json { render json: @malethrowing_disc_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malethrowing_disc_heads/1
  # PATCH/PUT /malethrowing_disc_heads/1.json
  def update
    respond_to do |format|
      if @malethrowing_disc_head.update(malethrowing_disc_head_params)
        format.html { redirect_to @malethrowing_disc_head, notice: 'Malethrowing disc head was successfully updated.' }
        format.json { render :show, status: :ok, location: @malethrowing_disc_head }
      else
        format.html { render :edit }
        format.json { render json: @malethrowing_disc_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malethrowing_disc_heads/1
  # DELETE /malethrowing_disc_heads/1.json
  def destroy
    @malethrowing_disc_head.destroy
    respond_to do |format|
      format.html { redirect_to malethrowing_disc_heads_url, notice: 'Malethrowing disc head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malethrowing_disc_head
      @malethrowing_disc_head = MalethrowingDiscHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malethrowing_disc_head_params
      params.require(:malethrowing_disc_head).permit(:championship_id, :fecha, :hora)
    end
end
