class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.integer :user_id, null: false
      t.integer :post_id, null: false

      t.timestamps null: false
    end
  end
end
