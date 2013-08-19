class CreateNotableNotes < ActiveRecord::Migration
  def change
    create_table :notable_notes do |t|
      t.text :body
      t.integer :notable_id
      t.string :notable_type

      t.timestamps
    end

    add_index(:notes, [:notable_id, :notable_type])
  end
end
