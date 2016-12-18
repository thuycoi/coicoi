class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.integer :german_id
      t.integer :vietnamese_id
      t.text :note
      t.timestamps
    end
  end
end
