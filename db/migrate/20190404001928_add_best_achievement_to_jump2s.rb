class AddBestAchievementToJump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :jump2s, :bestAchievement, :string
  end
end
