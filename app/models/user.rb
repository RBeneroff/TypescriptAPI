class User < ApplicationRecord
  has_many :fav_fonts
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email_address, presence: true, uniqueness: true, email: true
end
