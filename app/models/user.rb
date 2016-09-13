class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :email_confirmation
  # validates_presence_of :name
  validates :name,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }

end
