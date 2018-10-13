class AddNameToRegistrationHeads < ActiveRecord::Migration[5.1]
  def change
    add_column :registration_heads, :name, :string
  end
end
