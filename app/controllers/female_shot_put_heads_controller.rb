class FemaleShotPutHeadsController < ApplicationController
  before_action :set_female_shot_put_head, only: [:show, :edit, :update, :destroy]

  # GET /female_shot_put_heads
  # GET /female_shot_put_heads.json
  def index
    @female_shot_put_heads = FemaleShotPutHead.all
  end

  # GET /female_shot_put_heads/1
  # GET /female_shot_put_heads/1.json
  def show
  end

  # GET /female_shot_put_heads/new
  def new
    @female_shot_put_head = FemaleShotPutHead.new
  end

  # GET /female_shot_put_heads/1/edit
  def edit
  end

  # POST /female_shot_put_heads
  # POST /female_shot_put_heads.json
  def create
    @female_shot_put_head = FemaleShotPutHead.new(female_shot_put_head_params)

    respond_to do |format|
      if @female_shot_put_head.save
        format.html { redirect_to @female_shot_put_head, notice: 'Female shot put head was successfully created.' }
        format.json { render :show, status: :created, location: @female_shot_put_head }
      else
        format.html { render :new }
        format.json { render json: @female_shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_shot_put_heads/1
  # PATCH/PUT /female_shot_put_heads/1.json
  def update
    respond_to do |format|
      if @female_shot_put_head.update(female_shot_put_head_params)
        format.html { redirect_to @female_shot_put_head, notice: 'Female shot put head was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_shot_put_head }
      else
        format.html { render :edit }
        format.json { render json: @female_shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_shot_put_heads/1
  # DELETE /female_shot_put_heads/1.json
  def destroy
    @female_shot_put_head.destroy
    respond_to do |format|
      format.html { redirect_to female_shot_put_heads_url, notice: 'Female shot put head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_shot_put_head
      @female_shot_put_head = FemaleShotPutHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def female_shot_put_head_params
      params.require(:female_shot_put_head).permit(:championship_id, :fecha, :hora)
    end
end
