class AddPausedToTimekeeper < ActiveRecord::Migration
  def change
    add_column :timekeepers, :pause, :boolean
  end
end
