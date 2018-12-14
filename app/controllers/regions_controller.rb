class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /regions
  # GET /regions.json
   def index
    respond_to do |format|
     format.html
      format.json { render json: RegionsDatatable.new(view_context) }
      format.xlsx
    end
  end
  def datatable
    respond_to do |format|
        format.html
        format.json { render json: RegionsDatatable.new(view_context ,{id: id}) }
    end
end


  # GET /regions/1
  # GET /regions/1.json
  def show
  end

def competitionsNumber(number)
  @total=0

 sqlCount = "select count(*) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where track2s.region='"+number.to_s+"'"
sqlCount2="
select count(*) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where throw2s.region='"+number.to_s+"'
"
sqlCount3="
select count(*) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where jump2s.region='"+number.to_s+"'
"
sqlCount4="
select count(*) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where hjump2s.region='"+number.to_s+"'
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
def athletesNumber(number)
 @total=0
 sqlCount ="select count(distinct(athletes.id)) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
  where track2s.region='"+number.to_s+"'"
sqlCount2="
select count(distinct(athletes.id)) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where throw2s.region='"+number.to_s+"'"
 sqlCount3="
 select count(distinct(athletes.id)) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where jump2s.region='"+number.to_s+"'"
 sqlCount4="
 select count(distinct(athletes.id)) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
  where hjump2s.region='"+number.to_s+"'"    

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


def championshipsNumber(number)
  @total=0
 sqlCount ="select count(distinct(championships.id)) as total from track2s 
join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join track_head2s on track_head2s.id=track2s.track_head2_id 
join competitions on competitions.id=track_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where track2s.region='"+number.to_s+"'"
sqlCount2="
select count(distinct(championships.id)) as total from throw2s 
join athletes on throw2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join throw_head2s on throw_head2s.id=throw2s.throw_head2_id 
join competitions on competitions.id=throw_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where throw2s.region='"+number.to_s+"'"
 sqlCount3="
 select count(distinct(championships.id)) as total from jump2s 
join athletes on jump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join jump_head2s on jump_head2s.id=jump2s.jump_head2_id 
join competitions on competitions.id=jump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where jump2s.region='"+number.to_s+"'"
 sqlCount4="
 select count(distinct(championships.id)) as total from hjump2s 
join athletes on hjump2s.athlete=concat(athletes.names, ' ', athletes.surnames) 
join hjump_head2s on hjump_head2s.id=hjump2s.hjump_head2_id 
join competitions on competitions.id=hjump_head2s.competition_id 
join stages on stages.id=competitions.stage_id 
join championships on championships.id=stages.championship_id 
join sports on sports.id=competitions.sport_id 
 where hjump2s.region='"+number.to_s+"'"    
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

  # GET /regions/new
  def new
    @region = Region.new
  end

  # GET /regions/1/edit
  def edit
  end

  # POST /regions
  # POST /regions.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'Region was successfully created.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: 'Region was successfully updated.' }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to regions_url, notice: 'Region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:name, :number)
    end
         helper_method :competitionsNumber, :championshipsNumber, :athletesNumber
end
