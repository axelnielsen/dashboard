class Track < ApplicationRecord
	belongs_to :track_head 
	has_many :sport
end
