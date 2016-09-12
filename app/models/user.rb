class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    confirmation: true,
                    uniqueness: true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence: true, confirmation: true

end
