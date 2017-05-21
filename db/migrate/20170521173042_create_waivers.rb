class CreateWaivers < ActiveRecord::Migration
  def change
    create_table :waivers do |t|
      t.string :name
      t.string :email
      t.string :room

      t.timestamps
    end
  end
end
