class User < ActiveRecord::Base
  has_many :authored_comments, :class_name => "Comment", 
                               :dependent => :destroy
  has_many :user_posts
  has_many :authored_posts,
           :source => :post, 
           :through => :user_posts

  has_many :tags_on_authored_posts, 
           :through => :authored_posts

end
