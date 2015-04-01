class User < ActiveRecord::Base
  has_secure_password
  belongs_to :post
  belongs_to :blog
end
