class Blog < ActiveRecord::Base
  belongs_to :users
  belongs_to :posts
end
