class AddTypeToTrackHead < ActiveRecord::Migration[5.1]
  def change
    add_column :track_heads, :type, :string
  end
end
