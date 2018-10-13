class AddNameToRegistrationHead2s < ActiveRecord::Migration[5.1]
  def change
    add_reference :registration_head2s, :sexes, foreign_key: true
  end
end
