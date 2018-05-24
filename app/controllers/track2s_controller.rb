class Track2sController < ApplicationController
  before_action :set_track2, only: [:show, :edit, :update, :destroy]

  # GET /track2s
  # GET /track2s.json
  def index
    @track2s = Track2.all
  end

  # GET /track2s/1
  # GET /track2s/1.json
  def show
  end

  # GET /track2s/new
  def new
    @track2 = Track2.new
  end

  # GET /track2s/1/edit
  def edit
  end

  # POST /track2s
  # POST /track2s.json
  def create
    @track2 = Track2.new(track2_params)

    respond_to do |format|
      if @track2.save
        format.html { redirect_to @track2, notice: 'Track2 was successfully created.' }
        format.json { render :show, status: :created, location: @track2 }
      else
        format.html { render :new }
        format.json { render json: @track2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /track2s/1
  # PATCH/PUT /track2s/1.json
  def update
    respond_to do |format|
      if @track2.update(track2_params)
        format.html { redirect_to @track2, notice: 'Track2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @track2 }
      else
        format.html { render :edit }
        format.json { render json: @track2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /track2s/1
  # DELETE /track2s/1.json
  def destroy
    @track2.destroy
    respond_to do |format|
      format.html { redirect_to track2s_url, notice: 'Track2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track2
      @track2 = Track2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track2_params
      params.require(:track2).permit(:track_head2_id, :place, :achievement, :athlete, :an, :club, :region, :pais)
    end
end
