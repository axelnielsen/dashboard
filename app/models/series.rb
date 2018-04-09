class Series < ApplicationRecord
	belongs_to :championship

  def to_s
    name
  end
end
