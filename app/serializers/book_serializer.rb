class BookSerializer < ActiveModel::Serializer
  attributes  :id,:title, :author_id, :user_id, :genre, :image, :publication_year
  has_one :user
  has_one :author
end
