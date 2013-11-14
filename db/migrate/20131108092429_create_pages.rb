class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.string :body
      t.string :body_html

      t.timestamps
    end
  end
end
