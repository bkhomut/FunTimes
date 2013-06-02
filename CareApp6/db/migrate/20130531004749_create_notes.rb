class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :engagement_id
      t.text :note
    end
  end
end
