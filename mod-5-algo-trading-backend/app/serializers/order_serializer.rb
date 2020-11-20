class OrderSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :quantity, :price, :limit, :t