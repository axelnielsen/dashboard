class AddAnToJump2s < ActiveRecord::Migration[5.1]
  def change
    add_column :jump2s, :an, :string
  end
end
