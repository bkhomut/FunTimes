class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
    end
  end
end
