class User < ApplicationRecord
  has_many :guests
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
