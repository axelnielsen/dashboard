class StartMaleHighJump < ApplicationRecord
		def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			start_male_high_jump= find_by_id(row["id"]) || new
			#user.attributes = row.to_hash.slice(*accepts_nested_attributes_for)
			start_male_high_jump.attributes = row.to_hash.slice(*row.to_hash.keys)
			start_male_high_jump.save!

	
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



