class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.interger :note_id
      t.interger :case_id
      t.text :note
    end
  end
end
