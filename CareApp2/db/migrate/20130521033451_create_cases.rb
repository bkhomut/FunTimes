lass CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :case_id
      t.integer :user_id
      t.integer :condition_id
    end
  end

