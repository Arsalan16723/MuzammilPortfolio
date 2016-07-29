class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category_id
      t.integer :user_id
      t.text :tags
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end
