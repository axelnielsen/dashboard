class Championship < ApplicationRecord
 has_many :stages
 has_many :competitions, through: :stages
 accepts_nested_attributes_for :stages
end
