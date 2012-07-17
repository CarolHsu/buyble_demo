class AddOffShelfTimeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :off_shelf_time, :datetime
  end
end
