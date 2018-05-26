class Start2sController < ApplicationController
  before_action :set_start2, only: [:show, :edit, :update, :destroy]

  # GET /start2s
  # GET /start2s.json
  def index
    @start2s = Start2.all
  end

  # GET /start2s/1
  # GET /start2s/1.json
  def show
  end

  # GET /start2s/new
  def new
    @start2 = Start2.new
  end

  # GET /start2s/1/edit
  def edit
  end

  # POST /start2s
  # POST /start2s.json
  def create
    @start2 = Start2.new(start2_params)

    respond_to do |format|
      if @start2.save
        format.html { redirect_back(fallback_location: root_path, notice: 'Creado exitosamente' )  }
        format.json { render :show, status: :created, location: @start2 }
      else
        format.html { render :new }
        format.json { render json: @start2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start2s/1
  # PATCH/PUT /start2s/1.json
  def update
    respond_to do |format|
      if @start2.update(start2_params)
        format.html { redirect_to @start2, notice: 'Start2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @start2 }
      else
        format.html { render :edit }
        format.json { render json: @start2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start2s/1
  # DELETE /start2s/1.json
  def destroy
    @start2.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: 'Eliminado exitosamente' )  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start2
      @start2 = Start2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start2_params
      params.require(:start2).permit(:start_head_id, :athlete, :rail, :an, :club, :region, :bestAchievement)
    end
end
