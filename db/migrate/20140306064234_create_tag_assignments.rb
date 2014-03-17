class CreateTagAssignments < ActiveRecord::Migration
  def change
    create_table :tag_assignments do |t|
      t.integer :evidence_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
