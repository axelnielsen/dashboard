class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

helper_method :getAdminPermission, :getCamaraPermission, :getRegionNumber, :getRegionPermission, :getClubPermission , :getClubNumber,
:getChampionshipFromTrack2s, :getChampionshipAddressFromTrack2s, 
:getChampionshipInitDateFromTrack2s, :getChampionshipFinDateFromTrack2s, 
:getCompetitionFromTrack2s, :getAthleteNamesFromId, :getAthleteSurnamesFromId, :getAthleteRutFromId,
:getAthleteSexFromId, :getAthleteClubFromId, :getAthleteRegionFromId, :getAthleteBirthFromId


def getAthleteNamesFromId(id)
@names=""
  sql="SELECT names FROM athletes WHERE id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end

def getAthleteBirthFromId(id)
@names=""
  sql="SELECT birthdate FROM athletes WHERE athletes.id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end

def getAthleteSexFromId(id)
@names=""
  sql="SELECT sex_id FROM athletes WHERE athletes.id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end
def getAthleteClubFromId(id)
@names=""
  sql="SELECT clubs.name FROM clubs join athletes 
  on clubs.id=athletes.club_id
  WHERE athletes.id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end

def getAthleteRegionFromId(id)
@names=""
  sql="SELECT regions.id FROM regions join athletes
    on regions.id=athletes.region_id
     WHERE athletes.id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end
def getAthleteSurnamesFromId(id)
@names=""
  sql="SELECT surnames FROM athletes WHERE id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end
def getAthleteRutFromId(id)
@names=""
  sql="SELECT rut FROM athletes WHERE id='"+id.to_s+"'"
  arr=ActiveRecord::Base.connection.execute(sql)
  arr.each do |a|
@names=a[0]
end
return @names
end

def getAdminPermission(user)
  	@profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"   
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="ADMINISTRADOR"
  	return true
  else
  	return false
  end
end

def getCompetitionFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select sports.name 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join sports on competitions.sport_id=sports.id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end

def getChampionshipFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select championships.name 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end
def getChampionshipFinDateFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select finDate 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end
def getChampionshipDateFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select name 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end
def getChampionshipInitDateFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select initDate 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end
def getChampionshipAddressFromTrack2s(track_head2s_id)
    @name=""
    sqlName = "select address 
  from championships  join stages on championships.id=stages.championship_id
  join competitions on stages.id=competitions.stage_id
  join track_head2s on competitions.id=track_head2s.competition_id
  where track_head2s.id='"+track_head2s_id.to_s+"';" 
  arrName = ActiveRecord::Base.connection.execute(sqlName)
  arrName.each do |p|
  @name=p[0]
  
end
return @name
end


def getRegionPermission(user)
    @profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"   
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="ASOCIACIÓN REGIONAL"
    return true
  else
    return false
  end
end
def getCamaraPermission(user)
    @profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"   
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="CÁMARA DE LLAMADOS"
    return true
  else
    return false
  end
end
def getRegionPermission(user)
    @profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"   
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="ASOCIACIÓN REGIONAL"
    return true
  else
    return false
  end
end

def getClubPermission(user)
    @profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="CLUB"
    return true
  else
    return false
  end
end


def getRegionNumber(user)
    @region=""
    sqlRegion = "select region 
  from users 
  where users.email='"+user+"';"   
  arrRegion = ActiveRecord::Base.connection.execute(sqlRegion)
  arrRegion.each do |p|
  @region=p[0]
  return @region
end
end


def getClubNumber(user)
    @club=""
    sqlClub = "select club 
  from users 
  where users.email='"+user+"';"
  arrClub = ActiveRecord::Base.connection.execute(sqlClub)
  arrClub.each do |p|
  @club=p[0]
  return @club
end
end


def getClubPermission(user)
    @profile=""
    sqlProfile = "select name 
  from profiles  join users on profiles.id=users.profile_id  
  where users.email='"+user+"';"   
  arrProfile = ActiveRecord::Base.connection.execute(sqlProfile)
  arrProfile.each do |p|
  @profile=p[0]
  end
  if @profile=="CLUB"
    return true
  else
    return false
  end
end
end
