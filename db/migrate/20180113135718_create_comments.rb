class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :comment_id
      t.string :body
      t.date :date_comment
      t.references :Post, foreign_key: true
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
