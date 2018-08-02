class AddBestAchievementToThrow2 < ActiveRecord::Migration[5.1]
  def change
    add_column :throw2s, :bestAchievement, :string
  end
end
