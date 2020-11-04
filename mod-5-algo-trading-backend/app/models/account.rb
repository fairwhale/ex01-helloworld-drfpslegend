class Account < ApplicationRecord
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_secu