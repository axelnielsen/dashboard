class AddBestAchievementToTrack2 < ActiveRecord::Migration[5.1]
  def change
    add_column :track2s, :bestAchievement, :string
  end
end
