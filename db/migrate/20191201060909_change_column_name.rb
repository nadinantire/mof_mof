class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :exhibitions, :time, :start_time
  end
end
