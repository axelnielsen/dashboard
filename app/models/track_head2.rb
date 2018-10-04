class TrackHead2 < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category

has_many :track2s, dependent: :delete_all
accepts_nested_attributes_for :track2s
end
