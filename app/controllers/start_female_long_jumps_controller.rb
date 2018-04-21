class StartFemaleLongJumpsController < ApplicationController
  before_action :set_start_female_long_jump, only: [:show, :edit, :update, :destroy]

  # GET /start_female_long_jumps
  # GET /start_female_long_jumps.json
         def index
     respond_to do |format|
       @start_female_long_jump = StartFemaleLongJump.new
     format.html
      format.json { render json: StartFemaleLongJumpsDatatable.new(view_context) }
      format.xlsx
    end
end

def import
StartFemaleLongJump.import(params[:file])
redirect_to start_female_long_jumps_url, notice: "Importado correctamente"
end

  # GET /start_female_long_jumps/1
  # GET /start_female_long_jumps/1.json
  def show
  end

  # GET /start_female_long_jumps/new
  def new
    @start_female_long_jump = StartFemaleLongJump.new
  end

  # GET /start_female_long_jumps/1/edit
  def edit
  end

  # POST /start_female_long_jumps
  # POST /start_female_long_jumps.json
  def create
    @start_female_long_jump = StartFemaleLongJump.new(start_female_long_jump_params)

    respond_to do |format|
      if @start_female_long_jump.save
        format.html { redirect_to action:index, notice: 'Start female long jump was successfully created.' }
        format.json { render :show, status: :created, location: @start_female_long_jump }
      else
        format.html { render :new }
        format.json { render json: @start_female_long_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_female_long_jumps/1
  # PATCH/PUT /start_female_long_jumps/1.json
  def update
    respond_to do |format|
      if @start_female_long_jump.update(start_female_long_jump_params)
        format.html { redirect_to @start_female_long_jump, notice: 'Start female long jump was successfully updated.' }
        format.json { render :show, status: :ok, location: @start_female_long_jump }
      else
        format.html { render :edit }
        format.json { render json: @start_female_long_jump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_female_long_jumps/1
  # DELETE /start_female_long_jumps/1.json
  def destroy
    @start_female_long_jump.destroy
    respond_to do |format|
      format.html { redirect_to start_female_long_jumps_url, notice: 'Start female long jump was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_female_long_jump
      @start_female_long_jump = StartFemaleLongJump.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_female_long_jump_params
      params.require(:start_female_long_jump).permit(:place, :achievement, :rail, :number, :athlete, :an, :club, :region, :country, :femalelongjumpStart_id)
    end
end
