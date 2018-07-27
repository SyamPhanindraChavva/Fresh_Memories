class User < ApplicationRecord
  has_secure_password
  validates:username,presence:true,uniqueness: true
  validates:email,presence:true,uniqueness:true
  validates:phone,presence:true,uniqueness:true
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :avatar

  delegate :signed_in, to: :avatar, allow_nil: true
end
