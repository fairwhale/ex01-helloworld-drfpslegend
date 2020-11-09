class AccountSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :cash_deposite