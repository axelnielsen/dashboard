class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]


 
  # GET /athletes
  # GET /athletes.json
 def index
   respond_to do |format|
     format.html
      format.json { render json: AthletesDatatable.new(view_context) }
      format.xlsx
    end
  end

  # GET /athletes/1
  # GET /athletes/1.json
  def show
  end

def import
Athlete.import(params[:file])
redirect_to athletes_url, notice: "Importado correctamente"
end


def competitionsNumber(rut)
  @total=0
 sqlCount = "select count(*) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where track2s.rut='"+rut+"'"   
  arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=count[0]
  end
  return @total
end

def championshipsNumber(rut)
  @total=0
 sqlCount ="select count(distinct(championships.id)) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where track2s.rut='"+rut+"';"    
  arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=count[0]
  end
  return @total
end

  # GET /athletes/new
  def new
    @athlete = Athlete.new
  end

  # GET /athletes/1/edit
  def edit
  end

  # POST /athletes
  # POST /athletes.json
  def create
    @athlete = Athlete.new(athlete_params)

    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Athlete was successfully created.' }
        format.json { render :show, status: :created, location: @athlete }
      else
        format.html { render :new }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athletes/1
  # PATCH/PUT /athletes/1.json
  def update
    respond_to do |format|
      if @athlete.update(athlete_params)
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete }
      else
        format.html { render :edit }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes/1
  # DELETE /athletes/1.json
  def destroy
    @athlete.destroy
    respond_to do |format|
      format.html { redirect_to athletes_url, notice: 'Athlete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_params
      params.require(:athlete).permit(:names, :surnames, :sex, :birthdate, :birthyear, :rut, :idClub, :idRegion, :cellPhone, :mail, :idCoach, :size, :height, :club_id)
    end
    helper_method :competitionsNumber, :championshipsNumber
end
