class User < ApplicationRecord
  before_save { email.downcase!} #this does not work! bcause of :!!!! now ok ;)
  has_many :review_posts
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-._]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}

  #single Rails method -> secure password machinery
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
