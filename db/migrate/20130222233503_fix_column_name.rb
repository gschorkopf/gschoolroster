class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :profiles, :phone, :blog
  end

  def down
  end
end
