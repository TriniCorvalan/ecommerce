class Category < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :category, class_name: 'Category', optional: true
  has_many :categories, foreign_key: :category_id, class_name: 'Category'
end
