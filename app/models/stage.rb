class Stage < ApplicationRecord
  belongs_to :championship
  has_many :competitions
  accepts_nested_attributes_for :competitions
end
