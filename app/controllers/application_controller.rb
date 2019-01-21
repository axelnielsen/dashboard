class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

helper_method :getAdminPermission, :getCamaraPermission, :getRegionNumber, :getRegionPermission

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
