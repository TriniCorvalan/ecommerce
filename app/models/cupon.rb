class Cupon < ApplicationRecord
  belongs_to :user, optional: true

  has_many :CuponsAssociations
  has_many :orders, through: :CuponsAssociations

  has_many :CuponsAssociations
  has_many :users, through: :CuponsAssociations

  def personal
    if user.nil?
      return false
    else
      return true
    end
  end

  def rrss
    if user.nil?
      return  true
    else
      return  false
    end
  end
end
