class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name, :password
  # Todo: update this if you need to go through it for authing data
end
