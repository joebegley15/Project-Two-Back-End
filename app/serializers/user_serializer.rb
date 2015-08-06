class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :wins, :losses

  def wins
    object.wins
  end

  def losses
    object.losses
  end
end
