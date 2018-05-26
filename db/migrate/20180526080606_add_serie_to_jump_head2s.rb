class AddSerieToJumpHead2s < ActiveRecord::Migration[5.1]
  def change
    add_column :jump_head2s, :serie, :string
  end
end
