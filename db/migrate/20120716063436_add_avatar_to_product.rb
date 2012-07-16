class AddAvatarToProduct < ActiveRecord::Migration
  def change
    add_column :products, :avatar, :string
  end
end
