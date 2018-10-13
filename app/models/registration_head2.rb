class RegistrationHead2 < ApplicationRecord
  belongs_to :championship
  belongs_to :sex
  has_many :registration_head2s
  accepts_nested_attributes_for :registration_head2s
end
