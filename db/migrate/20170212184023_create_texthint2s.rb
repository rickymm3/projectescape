class CreateTexthint2s < ActiveRecord::Migration
  def change
    create_table :texthint2s do |t|
      t.string :message

      t.timestamps
    end
  end
end
