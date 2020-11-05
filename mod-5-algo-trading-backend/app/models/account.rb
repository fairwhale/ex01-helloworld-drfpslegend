class Account < ApplicationRecord
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_secure_password
  has_many :positions
  has_many :orders
  has_many :algorithms
end
