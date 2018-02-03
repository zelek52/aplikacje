class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :group_id
      t.string :name
      t.string :private
      t.date :created_date
    #  t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
