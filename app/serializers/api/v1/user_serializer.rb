class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name, :password
end
