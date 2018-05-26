class TrackHead2sController < ApplicationController
  before_action :set_track_head2, only: [:show, :edit, :update, :destroy]

  # GET /track_head2s
  # GET /track_head2s.json
  def index
     if params[:competition_id] 
      @track_head2s = TrackHead2.where(competition_id: params[:competition_id]).entries
    else
       @track_head2s = TrackHead2.all
    end
  end

  # GET /track_head2s/1
  # GET /track_head2s/1.json
  def show
  end

  # GET /track_head2s/new
  def new
    @track_head2 = TrackHead2.new
  end

  # GET /track_head2s/1/edit
  def edit
  end

  # POST /track_head2s
  # POST /track_head2s.json
  def create
    @track_head2 = TrackHead2.new(track_head2_params)

    respond_to do |format|
      if @track_head2.save
        format.html { redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )}
        format.json { render :show, status: :created, location: @track_head2 }
      else
        format.html { render :new }
        format.json { render json: @track_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /track_head2s/1
  # PATCH/PUT /track_head2s/1.json
  def update
    respond_to do |format|
      if @track_head2.update(track_head2_params)
        format.html { redirect_to @track_head2, notice: 'Track head2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @track_head2 }
      else
        format.html { render :edit }
        format.json { render json: @track_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track_head2s/1
  # DELETE /track_head2s/1.json
  def destroy
    @track_head2.destroy
    respond_to do |format|
      format.html { redirect_to track_head2s_url, notice: 'Track head2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_head2
      @track_head2 = TrackHead2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_head2_params
      params.require(:track_head2).permit(:fecha, :hora, :sex_id, :competition_id, :sport_id, :category_id, :serie, :wind, :type)
    end
end
