class Start < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category
end
