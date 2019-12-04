class AddEndTimeToExhibitions < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibitions, :end_time, :time
  end
end
