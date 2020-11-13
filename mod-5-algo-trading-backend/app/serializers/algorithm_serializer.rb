class AlgorithmSerializer < ActiveModel::Serializer
  attributes :id, :name, :account_id, :active
  belongs_to :account
end
