class User < ApplicationRecord
  before_validation { self.email = email.downcase }
  has_many :articles, dependent: :destroy
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false },
                       length: { minimum: 3, maximum: 25 }

  EMAIL_VALID_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 105 },
                    format: { with: EMAIL_VALID_PATTERN }
  has_secure_password
end
