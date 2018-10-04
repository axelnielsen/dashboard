class JumpHead2sController < ApplicationController
  before_action :set_jump_head2, only: [:show, :edit, :update, :destroy]

  # GET /jump_head2s
  # GET /jump_head2s.json
  def index
    @jump_head2s = JumpHead2.all
  end

  def sexColorBoxHeader(sex)
  if sex=="DAMAS"
    return'="box-header table-danger">'.html_safe
    else return '="box-header table-info">'.html_safe
    end
end
def sexColortr(sex)
  if sex=="DAMAS"
    return'="table-danger">'.html_safe
    else return '="table-info">'.html_safe
    end
end


  # GET /jump_head2s/1
  # GET /jump_head2s/1.json
  def show
  end

  # GET /jump_head2s/new
  def new
    @jump_head2 = JumpHead2.new
  end

  # GET /jump_head2s/1/edit
  def edit
  end

  # POST /jump_head2s
  # POST /jump_head2s.json
  def create
    @jump_head2 = JumpHead2.new(jump_head2_params)

    respond_to do |format|
      if @jump_head2.save
        format.html {redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' ) }
        format.json { render :show, status: :created, location: @jump_head2 }
      else
        format.html { render :new }
        format.json { render json: @jump_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jump_head2s/1
  # PATCH/PUT /jump_head2s/1.json
  def update
    respond_to do |format|
      if @jump_head2.update(jump_head2_params)
        format.html { redirect_to @jump_head2, notice: 'Jump head2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @jump_head2 }
      else
        format.html { render :edit }
        format.json { render json: @jump_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jump_head2s/1
  # DELETE /jump_head2s/1.json
  def destroy
    @jump_head2.destroy
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jump_head2
      @jump_head2 = JumpHead2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jump_head2_params
      params.require(:jump_head2).permit(:fecha_date, :hora, :sex_id, :competition_id, :sport_id, :category_id, :type, :serie)
    end


   helper_method :sexColorBoxHeader, :sexColortr
end
