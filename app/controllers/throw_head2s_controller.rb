class ThrowHead2sController < ApplicationController
  before_action :set_throw_head2, only: [:show, :edit, :update, :destroy]

  # GET /throw_head2s
  # GET /throw_head2s.json
  def index
    @throw_head2s = ThrowHead2.all
  end

  # GET /throw_head2s/1
  # GET /throw_head2s/1.json
  def show
  end

  # GET /throw_head2s/new
  def new
    @throw_head2 = ThrowHead2.new
  end

  # GET /throw_head2s/1/edit
  def edit
  end

  # POST /throw_head2s
  # POST /throw_head2s.json
  def create
    @throw_head2 = ThrowHead2.new(throw_head2_params)

    respond_to do |format|
      if @throw_head2.save
        format.html {  redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' )}
        format.json { render :show, status: :created, location: @throw_head2 }
      else
        format.html { render :new }
        format.json { render json: @throw_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /throw_head2s/1
  # PATCH/PUT /throw_head2s/1.json
  def update
    respond_to do |format|
      if @throw_head2.update(throw_head2_params)
        format.html { redirect_to @throw_head2, notice: 'Throw head2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @throw_head2 }
      else
        format.html { render :edit }
        format.json { render json: @throw_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /throw_head2s/1
  # DELETE /throw_head2s/1.json
  def destroy
    @throw_head2.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' ) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_throw_head2
      @throw_head2 = ThrowHead2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def throw_head2_params
      params.require(:throw_head2).permit(:fecha_date, :hora, :sex_id, :competition_id, :sport_id, :category_id, :type, :serie)
    end
end
