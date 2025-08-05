class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.text :review
      t.string :image

      t.timestamps
    end
  end
end
