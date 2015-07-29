class Post < ActiveRecord::Base
  has_many :user_posts
  has_many :authors, :source => :user, :through => :user_posts
  has_many :post_taggings
  has_many :tags_on_authored_posts, :source => :tag, :through => :post_taggings
  has_many :child_comments, 
           :class_name => "Comment" , 
           :dependent => :destroy
  has_many :tag_ids , :through => :post_taggings, :source => :tag
end
