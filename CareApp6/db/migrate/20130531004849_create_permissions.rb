class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :engagement_id
      t.integer :user_id
    end
  end
end
