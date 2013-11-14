class CreateBlogTypes < ActiveRecord::Migration
  def change
    create_table :blog_types do |t|
      t.string :name
      t.string :keywords
      t.string :description
      t.string :pic

      t.timestamps
    end
  end
end
