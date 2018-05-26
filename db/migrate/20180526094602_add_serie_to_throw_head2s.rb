class AddSerieToThrowHead2s < ActiveRecord::Migration[5.1]
  def change
    add_column :throw_head2s, :serie, :string
  end
end
