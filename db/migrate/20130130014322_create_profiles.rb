class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :twitter
      t.string :github
      t.string :text_editor

      t.timestamps
    end
  end
end
