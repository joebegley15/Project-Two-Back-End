class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :wins, :losses
end
