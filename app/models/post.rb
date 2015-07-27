class Post < ActiveRecord::Base
  has_many :user_posts
  has_many :users, :through => :user_posts
  has_many :post_taggings
  has_many :tags, :through => :post_taggings
  has_many :comments
end
