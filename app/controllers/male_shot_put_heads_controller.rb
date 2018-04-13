class MaleShotPutHeadsController < ApplicationController
  before_action :set_male_shot_put_head, only: [:show, :edit, :update, :destroy]

  # GET /male_shot_put_heads
  # GET /male_shot_put_heads.json
  def index
    @male_shot_put_heads = MaleShotPutHead.all
  end

  # GET /male_shot_put_heads/1
  # GET /male_shot_put_heads/1.json
  def show
  end

  # GET /male_shot_put_heads/new
  def new
    @male_shot_put_head = MaleShotPutHead.new
  end

  # GET /male_shot_put_heads/1/edit
  def edit
  end

  # POST /male_shot_put_heads
  # POST /male_shot_put_heads.json
  def create
    @male_shot_put_head = MaleShotPutHead.new(male_shot_put_head_params)

    respond_to do |format|
      if @male_shot_put_head.save
        format.html { redirect_to @male_shot_put_head, notice: 'Male shot put head was successfully created.' }
        format.json { render :show, status: :created, location: @male_shot_put_head }
      else
        format.html { render :new }
        format.json { render json: @male_shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_shot_put_heads/1
  # PATCH/PUT /male_shot_put_heads/1.json
  def update
    respond_to do |format|
      if @male_shot_put_head.update(male_shot_put_head_params)
        format.html { redirect_to @male_shot_put_head, notice: 'Male shot put head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_shot_put_head }
      else
        format.html { render :edit }
        format.json { render json: @male_shot_put_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_shot_put_heads/1
  # DELETE /male_shot_put_heads/1.json
  def destroy
    @male_shot_put_head.destroy
    respond_to do |format|
      format.html { redirect_to male_shot_put_heads_url, notice: 'Male shot put head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_shot_put_head
      @male_shot_put_head = MaleShotPutHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_shot_put_head_params
      params.require(:male_shot_put_head).permit(:championship_id, :fecha, :hora)
    end
end
