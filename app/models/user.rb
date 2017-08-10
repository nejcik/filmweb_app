class User < ApplicationRecord
  has_many :review_posts
  validates :name, presence: true
  validates :email, presence: true

end
