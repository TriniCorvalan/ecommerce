class CreateCupons < ActiveRecord::Migration[5.2]
  def change
    create_table :cupons do |t|
      t.string :code
      t.integer :amount
      t.boolean :percent
      t.references :user, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
