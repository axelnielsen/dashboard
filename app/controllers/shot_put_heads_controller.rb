class ShotPutHeadsController < ApplicationController
  before_action :set_shot_put_head, only: [:show, :edit, :update, :destroy]

  # GET /shot_put_heads
  # GET /shot_put_heads.json
  def index
    @shot_put_heads = ShotPutHead.all
  end

  # GET /shot_put_heads/1
  # GET /shot_put_heads/1.json
  def show
  end

  # GET /shot_put_heads/new
  def new
    @shot_put_head = ShotPutHead.new
  end

  # GET /shot_put_heads/1/edit
  def edit
  end

  # POST /shot_put_heads
  # POST /shot_put_heads.json
  def create
    @shot_put_head = ShotPutHead.new(shot_put_head_params)

    respond_to do |format|
      if @shot_put_head.save
        format.html { redirect_to @shot_put_head, notice: 'Shot put head was successfully created.' }
        format.json { render :show, status: :created, location: @shot_put_head }
      else
        format.html { render :new }
        format.json { render json: @shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shot_put_heads/1
  # PATCH/PUT /shot_put_heads/1.json
  def update
    respond_to do |format|
      if @shot_put_head.update(shot_put_head_params)
        format.html { redirect_to @shot_put_head, notice: 'Shot put head was successfully updated.' }
        format.json { render :show, status: :ok, location: @shot_put_head }
      else
        format.html { render :edit }
        format.json { render json: @shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shot_put_heads/1
  # DELETE /shot_put_heads/1.json
  def destroy
    @shot_put_head.destroy
    respond_to do |format|
      format.html { redirect_to shot_put_heads_url, notice: 'Shot put head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot_put_head
      @shot_put_head = ShotPutHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shot_put_head_params
      params.require(:shot_put_head).permit(:championship_id, :fecha, :hora)
    end
end
