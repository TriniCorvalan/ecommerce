class Cupon < ApplicationRecord
  belongs_to :user, optional: true

  has_many :CuponsAssociations
  has_many :orders, through: :CuponsAssociations

  has_many :CuponsAssociations
  has_many :users, through: :CuponsAssociations

end
