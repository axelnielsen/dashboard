class AddRegionToJump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :jump2s, :region, :string
  end
end
