class Tag < ActiveRecord::Base
  has_many :post_taggings 
  has_many :tagged_posts, :source => :post, :through => :post_taggings
  has_many :authors_of_tagged_posts , :through => :tagged_posts, :source => :user_posts
end
