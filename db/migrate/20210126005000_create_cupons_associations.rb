class CreateCuponsAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :cupons_associations do |t|
      t.references :cupon, foreign_key: true, optional: true
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
