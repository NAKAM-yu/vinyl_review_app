class CreateVinyls < ActiveRecord::Migration[8.0]
  def change
    create_table :vinyls do |t|
      t.string :title
      t.string :artist
      t.text :review

      t.timestamps
    end
  end
end
