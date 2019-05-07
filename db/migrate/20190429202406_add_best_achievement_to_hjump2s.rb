class AddBestAchievementToHjump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :hjump2s, :bestAchievement, :string
  end
end
