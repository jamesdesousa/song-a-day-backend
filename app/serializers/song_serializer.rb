class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :track_id, :genre_id
  has_one :genre
end
