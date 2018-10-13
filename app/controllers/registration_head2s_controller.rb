class RegistrationHead2sController < ApplicationController
  before_action :set_registration_head2, only: [:show, :edit, :update, :destroy]

  # GET /registration_head2s
  # GET /registration_head2s.json
  def index
    @registration_head2s = RegistrationHead2.all
  end

  # GET /registration_head2s/1
  # GET /registration_head2s/1.json
  def show
  end

  # GET /registration_head2s/new
  def new
    @registration_head2 = RegistrationHead2.new
  end

  # GET /registration_head2s/1/edit
  def edit
  end

  # POST /registration_head2s
  # POST /registration_head2s.json
  def create
    @registration_head2 = RegistrationHead2.new(registration_head2_params)

    respond_to do |format|
      if @registration_head2.save
        format.html { redirect_to @registration_head2, notice: 'Registration head2 was successfully created.' }
        format.json { render :show, status: :created, location: @registration_head2 }
      else
        format.html { render :new }
        format.json { render json: @registration_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_head2s/1
  # PATCH/PUT /registration_head2s/1.json
  def update
    respond_to do |format|
      if @registration_head2.update(registration_head2_params)
        format.html { redirect_to @registration_head2, notice: 'Registration head2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_head2 }
      else
        format.html { render :edit }
        format.json { render json: @registration_head2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_head2s/1
  # DELETE /registration_head2s/1.json
  def destroy
    @registration_head2.destroy
    respond_to do |format|
      format.html { redirect_to registration_head2s_url, notice: 'Registration head2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_head2
      @registration_head2 = RegistrationHead2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_head2_params
      params.require(:registration_head2).permit(:championship_id, :sex_id, :fecha, :name, :lastname, :an, :club, :region, :pais, :dni)
    end
end
