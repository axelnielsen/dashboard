class AddBestAchievementToTrack < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :bestAchievement, :time
  end
end
