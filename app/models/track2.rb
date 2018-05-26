class Track2 < ApplicationRecord
  belongs_to :track_head2

def self.import(file, id)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			track2= find_by_id(row["id"]) || new
            track2.track_head2_id=id

			#user.attributes = row.to_hash.slice(*accepts_nested_attributes_for)
			track2.attributes = row.to_hash.slice(*row.to_hash.keys)
			track2.save!

	
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
