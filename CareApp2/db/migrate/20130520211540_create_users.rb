class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
    end
  end
end
