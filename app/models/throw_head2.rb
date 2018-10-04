class ThrowHead2 < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category

  has_many :throw2s, dependent: :delete_all
  accepts_nested_attributes_for :throw2s
end
