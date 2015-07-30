class Post < ActiveRecord::Base
  has_many :user_posts
  has_many :authors, :source => :user, :through => :user_posts
  has_many :post_taggings
  has_many :tags_on_authored_posts, :source => :tag, :through => :post_taggings
  has_many :comments,
           :dependent => :destroy

  accepts_nested_attributes_for :comments, 
                                :reject_if => :all_blank,
                                :allow_destroy => true
end
