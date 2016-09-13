class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :email, :email_confirmation, :password, :password_confirmation

  validates :name, presence: true
  validates :email, presence: true,
                    confirmation: true,
                    uniqueness: true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                    on: :create
                  }
  validates :password, presence: true, confirmation: true

end
