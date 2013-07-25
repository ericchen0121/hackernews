class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  has_many :cvotes
  has_many :pvotes
end
