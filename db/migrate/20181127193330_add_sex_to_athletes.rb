class AddSexToAthletes < ActiveRecord::Migration[5.1]
  def change
    add_reference :athletes, :sex, foreign_key: true
  end
end
