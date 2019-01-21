class AddClubToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :club, :integer
  end
end
