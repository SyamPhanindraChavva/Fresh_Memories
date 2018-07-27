class Comment < ApplicationRecord
  validates :description, presence: true, length: {minimum:1, maximum:150}
  belongs_to :user
  belongs_to :post
  validates :user_id, presence: true
  validates :post_id, presence: true
  default_scope -> {order(updated_at: :desc)}
end
