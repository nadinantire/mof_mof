class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :artifact, foreign_key: true
      t.string :amaunt
      t.string :currency
      t.string :status
      t.text :details

      t.timestamps
    end
  end
end
