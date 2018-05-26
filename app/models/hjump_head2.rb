class HjumpHead2 < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category
has_many :hjump2s
   accepts_nested_attributes_for :hjump2s
end
