class ChangeTimeDatatypeInMeeting < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetings, :time, :time
    add_column :meetings, :time, :timestamp
  end
end
