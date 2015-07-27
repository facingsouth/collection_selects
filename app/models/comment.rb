class Comment < ActiveRecord::Base
  belongs_to :author , :class_name => "User"
  belongs_to :parent_post , :class_name=> "Post"
end
