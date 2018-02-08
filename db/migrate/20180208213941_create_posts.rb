class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :body
      t.date :date_post
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
