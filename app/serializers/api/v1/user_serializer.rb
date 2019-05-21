class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :email, :first_name, :last_name
  # Todo: update this if you need to go through it for authing data
end
