class AddClubToAthletes < ActiveRecord::Migration[5.1]
  def change
    add_reference :athletes, :club, foreign_key: true
  end
end
