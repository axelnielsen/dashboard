class AddPointsToJump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :jump2s, :points, :string
  end
end
