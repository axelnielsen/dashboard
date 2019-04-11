class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  def index
    respond_to do |format|
     format.html
      format.json { render json: ClubsDatatable.new(view_context) }
      format.xlsx
    end
  end
  def datatable
    respond_to do |format|
        format.html
        format.json { render json: ClubsDatatable.new(view_context ,{region_id: region_id}) }
    end
end

def competitionsNumber(id)
  @total=0

 sqlCount = "select count(*) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'"
sqlCount2="
select count(*) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
"
sqlCount3="
select count(*) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
"
sqlCount4="
select count(*) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "   
  arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=@total+count[0]
  end
  arrCount = ActiveRecord::Base.connection.execute(sqlCount2)
  arrCount.each do |count|
   @total=@total+count[0]
  end
  arrCount = ActiveRecord::Base.connection.execute(sqlCount3)
  arrCount.each do |count|
   @total=@total+count[0]
  end
  arrCount = ActiveRecord::Base.connection.execute(sqlCount4)
  arrCount.each do |count|
   @total=@total+count[0]
  end
  return @total
end
def athletesByRegion(region)
@total=0
sqlCount="select count(distinct(athletes.id)) as total from athletes where region_id="+region+""
 arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=@total+count[0]
  end
return @total
end

def athletesNumber(id)
 @total=0
 sqlCount ="select count(distinct(athletes.id)) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
"
sqlCount2="
select count(distinct(athletes.id)) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "
 sqlCount3="
 select count(distinct(athletes.id)) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "
 sqlCount4="
 select count(distinct(athletes.id)) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "    
  arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount2)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount3)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount4)
  arrCount.each do |count|
  @total=@total+count[0]
  end
  return @total
end


def championshipsNumber(id)
  @total=0
 sqlCount ="select count(distinct(championships.id)) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
"
sqlCount2="
select count(distinct(championships.id)) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "
 sqlCount3="
 select count(distinct(championships.id)) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "
 sqlCount4="
 select count(distinct(championships.id)) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where athletes.club_id='"+id.to_s+"'
 "    
  arrCount = ActiveRecord::Base.connection.execute(sqlCount)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount2)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount3)
  arrCount.each do |count|
  @total=@total+count[0]
  end
   arrCount = ActiveRecord::Base.connection.execute(sqlCount4)
  arrCount.each do |count|
  @total=@total+count[0]
  end
  return @total
end


  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :region_id)
    end
     helper_method :competitionsNumber, :championshipsNumber, :athletesNumber, :athletesByRegion
end
