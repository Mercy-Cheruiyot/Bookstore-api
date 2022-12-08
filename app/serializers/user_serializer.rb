class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname, :password_digest, :image_url, :email
end
