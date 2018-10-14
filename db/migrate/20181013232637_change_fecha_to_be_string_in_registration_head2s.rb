class ChangeFechaToBeStringInRegistrationHead2s < ActiveRecord::Migration[5.1]
  def change
  	change_column :registration_head2s, :fecha, :string
  	change_column :registration_head2s, :an, :string
  end
end
