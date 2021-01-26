class CuponsAssociation < ApplicationRecord
  belongs_to :cupon
  belongs_to :user
  belongs_to :order
end
