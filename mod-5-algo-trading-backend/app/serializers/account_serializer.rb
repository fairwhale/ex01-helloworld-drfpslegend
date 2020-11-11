class AccountSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :cash_deposited
  has_many :positions
  has_many :orders
  has_many :algorithms

end
