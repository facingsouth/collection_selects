class CreatePostTaggings < ActiveRecord::Migration
  def change
    create_table :post_taggings do |t|
      t.integer :post_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end
  end
end
