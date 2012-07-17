class AddIsFrontCoverPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :is_front_cover, :boolean, :default => false
  end
end
