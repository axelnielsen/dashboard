class HjumpHead2sController < ApplicationController
  before_action :set_hjump_head2, only: [:show, :edit, :update, :destroy]

  # GET /hjump_head2s
  # GET /hjump_head2s.json
  def index
    @hjump_head2s = HjumpHead2.all
  end

  # GET /hjump_head2s/1
  # GET /hjump_head2s/1.json
  def show
  end

  # GET /hjump_head2s/new
  def new
    @hjump_head2 = HjumpHead2.new
  end

  # GET /hjump_head2s/1/edit
  def edit
  end

  # POST /hjump_head2s
  # POST /hjump_head2s.json
  def create
    @hjump_head2 = HjumpHead2.new(hjump_head2_params)

    respond_to do |format|
      if @hjump_head2.save
        format.html {  redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' ) }
        format.json { render :show, status: :created, location: @hjump_head2 }
      else
        format.html { render :new }
        format.json { render json: @hjump_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hjump_head2s/1
  # PATCH/PUT /hjump_head2s/1.json
  def update
    respond_to do |format|
      if @hjump_head2.update(hjump_head2_params)
        format.html { redirect_to @hjump_head2, notice: 'Hjump head2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @hjump_head2 }
      else
        format.html { render :edit }
        format.json { render json: @hjump_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hjump_head2s/1
  # DELETE /hjump_head2s/1.json
  def destroy
    @hjump_head2.destroy
    respond_to do |format|
      format.html { redirect_to hjump_head2s_url, notice: 'Hjump head2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hjump_head2
      @hjump_head2 = HjumpHead2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hjump_head2_params
      params.require(:hjump_head2).permit(:fecha, :hora, :sex_id, :competition_id, :sport_id, :category_id, :serie)
    end
end
