class AuthorSerializer < ActiveModel::Serializer
  attributes  :name, :genre, :image
  has_many :books
end
