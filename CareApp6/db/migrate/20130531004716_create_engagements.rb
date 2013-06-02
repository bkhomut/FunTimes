class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.integer :user_id
      t.integer :condition_id
    end
  end
end
