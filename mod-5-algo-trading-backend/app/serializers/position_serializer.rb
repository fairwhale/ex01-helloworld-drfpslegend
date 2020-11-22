
class PositionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :quantity, :trading_pair
  belongs_to :account
end