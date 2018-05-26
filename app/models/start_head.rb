class StartHead < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category
  has_many :start2s 
  accepts_nested_attributes_for :start2s

end
