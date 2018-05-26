class AddTypeToTrackHead2s < ActiveRecord::Migration[5.1]
  def change
    add_column :track_head2s, :type, :string
  end
end
