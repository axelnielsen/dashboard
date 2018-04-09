json.extract! athlete, :id, :names, :surnames, :sex, :birthdate, :birthyear, :rut, :idClub, :idRegion, :cellPhone, :mail, :idCoach, :size, :height, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
