class CreateTexthints < ActiveRecord::Migration
  def change
    create_table :texthints do |t|
      t.string :message

      t.timestamps
    end
  end
end
