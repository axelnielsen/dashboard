class FemalejumpHeadsController < ApplicationController
  before_action :set_femalejump_head, only: [:show, :edit, :update, :destroy]

  # GET /femalejump_heads
  # GET /femalejump_heads.json
  def index
    @femalejump_heads = FemalejumpHead.all
  end

  # GET /femalejump_heads/1
  # GET /femalejump_heads/1.json
  def show
  end

  # GET /femalejump_heads/new
  def new
    @femalejump_head = FemalejumpHead.new
  end

  # GET /femalejump_heads/1/edit
  def edit
  end

  # POST /femalejump_heads
  # POST /femalejump_heads.json
  def create
    @femalejump_head = FemalejumpHead.new(femalejump_head_params)

    respond_to do |format|
      if @femalejump_head.save
        format.html { redirect_to @femalejump_head, notice: 'Femalejump head was successfully created.' }
        format.json { render :show, status: :created, location: @femalejump_head }
      else
        format.html { render :new }
        format.json { render json: @femalejump_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /femalejump_heads/1
  # PATCH/PUT /femalejump_heads/1.json
  def update
    respond_to do |format|
      if @femalejump_head.update(femalejump_head_params)
        format.html { redirect_to @femalejump_head, notice: 'Femalejump head was successfully updated.' }
        format.json { render :show, status: :ok, location: @femalejump_head }
      else
        format.html { render :edit }
        format.json { render json: @femalejump_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /femalejump_heads/1
  # DELETE /femalejump_heads/1.json
  def destroy
    @femalejump_head.destroy
    respond_to do |format|
      format.html { redirect_to femalejump_heads_url, notice: 'Femalejump head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_femalejump_head
      @femalejump_head = FemalejumpHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def femalejump_head_params
      params.require(:femalejump_head).permit(:championship_id, :fecha, :hora)
    end
end
