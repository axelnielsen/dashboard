class FemalethrowingDiscHeadsController < ApplicationController
  before_action :set_femalethrowing_disc_head, only: [:show, :edit, :update, :destroy]

  # GET /femalethrowing_disc_heads
  # GET /femalethrowing_disc_heads.json
  def index
    @femalethrowing_disc_heads = FemalethrowingDiscHead.all
  end

  # GET /femalethrowing_disc_heads/1
  # GET /femalethrowing_disc_heads/1.json
  def show
  end

  # GET /femalethrowing_disc_heads/new
  def new
    @femalethrowing_disc_head = FemalethrowingDiscHead.new
  end

  # GET /femalethrowing_disc_heads/1/edit
  def edit
  end

  # POST /femalethrowing_disc_heads
  # POST /femalethrowing_disc_heads.json
  def create
    @femalethrowing_disc_head = FemalethrowingDiscHead.new(femalethrowing_disc_head_params)

    respond_to do |format|
      if @femalethrowing_disc_head.save
        format.html { redirect_to @femalethrowing_disc_head, notice: 'Femalethrowing disc head was successfully created.' }
        format.json { render :show, status: :created, location: @femalethrowing_disc_head }
      else
        format.html { render :new }
        format.json { render json: @femalethrowing_disc_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /femalethrowing_disc_heads/1
  # PATCH/PUT /femalethrowing_disc_heads/1.json
  def update
    respond_to do |format|
      if @femalethrowing_disc_head.update(femalethrowing_disc_head_params)
        format.html { redirect_to @femalethrowing_disc_head, notice: 'Femalethrowing disc head was successfully updated.' }
        format.json { render :show, status: :ok, location: @femalethrowing_disc_head }
      else
        format.html { render :edit }
        format.json { render json: @femalethrowing_disc_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /femalethrowing_disc_heads/1
  # DELETE /femalethrowing_disc_heads/1.json
  def destroy
    @femalethrowing_disc_head.destroy
    respond_to do |format|
      format.html { redirect_to femalethrowing_disc_heads_url, notice: 'Femalethrowing disc head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_femalethrowing_disc_head
      @femalethrowing_disc_head = FemalethrowingDiscHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def femalethrowing_disc_head_params
      params.require(:femalethrowing_disc_head).permit(:championship_id, :fecha, :hora)
    end
end
