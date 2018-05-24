class TrackHeadsController < ApplicationController
  before_action :set_track_head, only: [:show, :edit, :update, :destroy]

  # GET /track_heads
  # GET /track_heads.json
  def index
   
     if params[:sport_id]
      @track_heads = TrackHead.where(sportId: params[:sport_id]).entries
    else
       @track_heads = TrackHead.all
    end
  end

  # GET /track_heads/1
  # GET /track_heads/1.json
  def show
  end

  # GET /track_heads/new
  def new
    @track_head = TrackHead.new
  end

  # GET /track_heads/1/edit
  def edit
  end

  # POST /track_heads
  # POST /track_heads.json
  def create
    @track_head = TrackHead.new(track_head_params)

    respond_to do |format|
      if @track_head.save
        format.html { redirect_to @track_head, notice: 'Track head was successfully created.' }
        format.json { render :show, status: :created, location: @track_head }
      else
        format.html { render :new }
        format.json { render json: @track_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /track_heads/1
  # PATCH/PUT /track_heads/1.json
  def update
    respond_to do |format|
      if @track_head.update(track_head_params)
        format.html { redirect_to @track_head, notice: 'Track head was successfully updated.' }
        format.json { render :show, status: :ok, location: @track_head }
      else
        format.html { render :edit }
        format.json { render json: @track_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track_heads/1
  # DELETE /track_heads/1.json
  def destroy
    @track_head.destroy
    respond_to do |format|
      format.html { redirect_to track_heads_url, notice: 'Track head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_head
      @track_head = TrackHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_head_params
      params.require(:track_head).permit(:fecha, :hora, :gender, :trackSerieId, :sportId, :categoryId)
    end
end
