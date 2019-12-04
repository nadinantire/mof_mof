class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :exhibitions, :photo, :image
  end
end
