class User < ApplicationRecord
  # has_many :events, dependent: :destroy
  has_many :reviews
  has_and_belongs_to_many :events


  attr_accessor :password
  validates_confirmation_of :password
  validates :user_email, :presence => true, :uniqueness => true
  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(user_email, password)
    user = User.find_by "user_email = ?", user_email
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
