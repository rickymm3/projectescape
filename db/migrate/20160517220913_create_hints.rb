class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
