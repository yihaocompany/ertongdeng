class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :body
      t.string :body_html
      t.integer :active
      t.integer :approved_comments_count
      t.string :cached_tag_list
      t.datetime :published
      t.datetime :edited_at

      t.timestamps
    end
  end
end
