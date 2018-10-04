class JumpHead2 < ApplicationRecord
  belongs_to :sex
  belongs_to :competition
  belongs_to :sport
  belongs_to :category

  has_many :jump2s, dependent: :delete_all
  accepts_nested_attributes_for :jump2s
end
