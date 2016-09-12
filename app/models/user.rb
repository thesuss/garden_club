class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, confirmation: true
  validates :password, presence: true, confirmation: true
  validates_uniqueness_of :email

end
