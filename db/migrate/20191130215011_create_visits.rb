class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.text :day_week
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
