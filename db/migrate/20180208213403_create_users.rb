class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end