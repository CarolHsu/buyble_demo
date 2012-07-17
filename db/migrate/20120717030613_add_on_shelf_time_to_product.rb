class AddOnShelfTimeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :on_shelf_time, :datetime
  end
end
