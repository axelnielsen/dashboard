class AddRutToTrack2 < ActiveRecord::Migration[5.1]
  def change
    add_column :track2s, :rut, :string
  end
end
