class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.string :body
      t.date :date_post
      t.string :image
      t.references :User, foreign_key: true
      t.references :Group, foreign_key: true

      t.timestamps
    end
  end
end
