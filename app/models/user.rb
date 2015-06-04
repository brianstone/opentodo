class User < ActiveRecord::Base
  has_many :lists


  has_secure_password validations: false
  validates :password, presence: true, length: { minimum: 8 }
end
