class CreateExhibitions < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitions do |t|
      t.text :photo
      t.string :title
      t.date :date
      t.time :time
      t.text :discription

      t.timestamps
    end
  end
end
