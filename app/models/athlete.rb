class Athlete < ApplicationRecord

	 belongs_to :sex
	 belongs_to :region
	  belongs_to :club


def self.achievementsByDate(names, surnames)
    query = <<-SQL
     select stages.fecha,  track2s.achievement from track2s join athletes on track2s.athlete=concat(athletes.names, ' ', athletes.surnames) join track_head2s on track_head2s.id=track2s.track_head2_id join competitions on competitions.id=track_head2s.competition_id join stages on stages.id=competitions.stage_id join championships on championships.id=stages.championship_id join sports on sports.id=competitions.sport_id 
 where track2s.athlete=concat(names, " ", surnames)
    SQL

    self.find_by_sql(query)
  end

		def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			user= find_by_id(row["id"]) || new
			#user.attributes = row.to_hash.slice(*accepts_nested_attributes_for)
			user.attributes = row.to_hash.slice(*row.to_hash.keys)
			user.save!

	
	end
end
 def self.open_spreadsheet(file)
 	case File.extname(file.original_filename)
 	when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
 	when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
 	else raise "tipo de archivo desconocido: #{file.original_filename}"
    
     end
end

end
