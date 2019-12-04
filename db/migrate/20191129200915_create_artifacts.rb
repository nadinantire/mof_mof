class CreateArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :amount
      t.string :category

      t.timestamps
    end
  end
end
