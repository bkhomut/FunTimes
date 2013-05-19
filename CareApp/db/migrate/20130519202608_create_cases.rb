class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.interger :case_id
      t.interger :user_id
      t.interger :condition_id
    end
  end
end
