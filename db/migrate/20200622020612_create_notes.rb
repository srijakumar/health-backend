class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :tracker_id
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
