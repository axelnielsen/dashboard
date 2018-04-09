class Championship < ApplicationRecord
	has_many :series
	 accepts_nested_attributes_for :series
  def to_s
    name
  end
end
