class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name_public
      t.string :login
      t.string :password
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :address
      t.integer :phone_nr
      t.date :joined_date
      t.date :last_visit

      t.timestamps
    end
  end
end
