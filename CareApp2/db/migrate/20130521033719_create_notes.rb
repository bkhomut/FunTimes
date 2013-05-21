class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :note_id
      t.integer :case_id
      t.text :note
    end
  end
end
