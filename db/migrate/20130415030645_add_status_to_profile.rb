class AddStatusToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :status, :integer
    add_index :profiles, :status
  end
end
