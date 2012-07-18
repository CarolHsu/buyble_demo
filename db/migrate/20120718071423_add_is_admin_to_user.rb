class AddIsAdminToUser < ActiveRecord::Migration
  def change
      def change
    add_column :users, :is_admin, :boolean
  end
  end
end
