class Competition < ApplicationRecord
  belongs_to :sport
  belongs_to :category
  belongs_to :sex
  belongs_to :stage
 
end
