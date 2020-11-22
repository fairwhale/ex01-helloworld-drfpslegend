class OrderSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :quantity, :price, :limit, :trading_pair, :usd_id, :pos