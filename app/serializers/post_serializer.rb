class PostSerializer < ActiveModel::Serializer
  attributes :id, :caption
  has_one :song
  has_one :user
end
