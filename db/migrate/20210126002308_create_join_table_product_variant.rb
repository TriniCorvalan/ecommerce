class CreateJoinTableProductVariant < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :variants do |t|
      t.index [:product_id, :variant_id]
      t.index [:variant_id, :product_id]
    end
  end
end
