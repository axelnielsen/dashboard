class MaleJavelinHeadsController < ApplicationController
  before_action :set_male_javelin_head, only: [:show, :edit, :update, :destroy]

  # GET /male_javelin_heads
  # GET /male_javelin_heads.json
  def index
    @male_javelin_heads = MaleJavelinHead.all
  end

  # GET /male_javelin_heads/1
  # GET /male_javelin_heads/1.json
  def show
  end

  # GET /male_javelin_heads/new
  def new
    @male_javelin_head = MaleJavelinHead.new
  end

  # GET /male_javelin_heads/1/edit
  def edit
  end

  # POST /male_javelin_heads
  # POST /male_javelin_heads.json
  def create
    @male_javelin_head = MaleJavelinHead.new(male_javelin_head_params)

    respond_to do |format|
      if @male_javelin_head.save
        format.html { redirect_to @male_javelin_head, notice: 'Male javelin head was successfully created.' }
        format.json { render :show, status: :created, location: @male_javelin_head }
      else
        format.html { render :new }
        format.json { render json: @male_javelin_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_javelin_heads/1
  # PATCH/PUT /male_javelin_heads/1.json
  def update
    respond_to do |format|
      if @male_javelin_head.update(male_javelin_head_params)
        format.html { redirect_to @male_javelin_head, notice: 'Male javelin head was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_javelin_head }
      else
        format.html { render :edit }
        format.json { render json: @male_javelin_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_javelin_heads/1
  # DELETE /male_javelin_heads/1.json
  def destroy
    @male_javelin_head.destroy
    respond_to do |format|
      format.html { redirect_to male_javelin_heads_url, notice: 'Male javelin head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_javelin_head
      @male_javelin_head = MaleJavelinHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def male_javelin_head_params
      params.require(:male_javelin_head).permit(:championship_id, :fecha, :hora)
    end
end
