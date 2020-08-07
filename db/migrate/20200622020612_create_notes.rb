class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :tracker_id
      t.string :content
      t.date :date

      t.timestamps
    end
  end
end
