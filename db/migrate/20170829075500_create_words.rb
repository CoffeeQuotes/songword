class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :mot
      t.string :meaning
      t.string :origin
      t.string :type
      t.text :example
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
 