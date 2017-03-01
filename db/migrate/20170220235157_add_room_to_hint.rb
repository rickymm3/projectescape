class AddRoomToHint < ActiveRecord::Migration
  def change
    add_column :hints, :room, :string
  end
end
