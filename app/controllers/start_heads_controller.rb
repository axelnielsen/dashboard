class StartHeadsController < ApplicationController
  before_action :set_start_head, only: [:show, :edit, :update, :destroy]

  # GET /start_heads
  # GET /start_heads.json
  def index
    @start_heads = StartHead.all
  end

  # GET /start_heads/1
  # GET /start_heads/1.json
  def show
  end

  # GET /start_heads/new
  def new
    @start_head = StartHead.new
  end

  # GET /start_heads/1/edit
  def edit
  end

  # POST /start_heads
  # POST /start_heads.json
  def create
    @start_head = StartHead.new(start_head_params)

    respond_to do |format|
      if @start_head.save
        format.html {redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' ) }
        format.json { render :show, status: :created, location: @start_head }
      else
        format.html { render :new }
        format.json { render json: @start_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_heads/1
  # PATCH/PUT /start_heads/1.json
  def update
    respond_to do |format|
      if @start_head.update(start_head_params)
        format.html { redirect_to @start_head, notice: 'Start head was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_head }
      else
        format.html { render :edit }
        format.json { render json: @start_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_heads/1
  # DELETE /start_heads/1.json
  def destroy
    @start_head.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_head
      @start_head = StartHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_head_params
      params.require(:start_head).permit(:fecha, :hora, :sex_id, :competition_id, :sport_id, :category_id, :serie)
    end
end
