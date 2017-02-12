class CreateHint2s < ActiveRecord::Migration
  def change
    create_table :hint2s do |t|
      t.string :message

      t.timestamps
    end
  end
end
