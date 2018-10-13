class RegistrationDetail2sController < ApplicationController
  before_action :set_registration_detail2, only: [:show, :edit, :update, :destroy]

  # GET /registration_detail2s
  # GET /registration_detail2s.json
  def index
    @registration_detail2s = RegistrationDetail2.all
  end

  # GET /registration_detail2s/1
  # GET /registration_detail2s/1.json
  def show
  end

  # GET /registration_detail2s/new
  def new
    @registration_detail2 = RegistrationDetail2.new
  end

  # GET /registration_detail2s/1/edit
  def edit
  end

  # POST /registration_detail2s
  # POST /registration_detail2s.json
  def create
    @registration_detail2 = RegistrationDetail2.new(registration_detail2_params)

    respond_to do |format|
      if @registration_detail2.save
        format.html { redirect_to @registration_detail2, notice: 'Registration detail2 was successfully created.' }
        format.json { render :show, status: :created, location: @registration_detail2 }
      else
        format.html { render :new }
        format.json { render json: @registration_detail2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_detail2s/1
  # PATCH/PUT /registration_detail2s/1.json
  def update
    respond_to do |format|
      if @registration_detail2.update(registration_detail2_params)
        format.html { redirect_to @registration_detail2, notice: 'Registration detail2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_detail2 }
      else
        format.html { render :edit }
        format.json { render json: @registration_detail2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_detail2s/1
  # DELETE /registration_detail2s/1.json
  def destroy
    @registration_detail2.destroy
    respond_to do |format|
      format.html { redirect_to registration_detail2s_url, notice: 'Registration detail2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_detail2
      @registration_detail2 = RegistrationDetail2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_detail2_params
      params.require(:registration_detail2).permit(:registration_head2_id, :competition_id, :bestAchievement)
    end
end
