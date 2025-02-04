class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, uniqueness: true
end
