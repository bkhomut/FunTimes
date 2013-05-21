class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :condition_id
      t.string :condition_name
      t.string :resource
    end
  end
end
