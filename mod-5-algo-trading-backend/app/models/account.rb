class Account < ApplicationRecord
  validates :username, uniqueness: true
  validates :em