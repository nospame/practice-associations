class CreateMeetingSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :meeting_speakers do |t|
      t.integer :meeting_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
