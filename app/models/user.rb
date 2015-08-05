class User < ActiveRecord::Base
  has_secure_password
  has_many :games
  before_create :set_token

  validates :email, uniqueness: true

  def self.login(email, password)
    user = find_by email: email
    user = user.login password if user
  end

  def login(password)
    authenticate(password) && set_token && save! && token
  end

  private

  def set_token
    self.token = SecureRandom.hex
  end
end
