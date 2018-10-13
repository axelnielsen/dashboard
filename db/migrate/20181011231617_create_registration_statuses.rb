class CreateRegistrationStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :registration_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
