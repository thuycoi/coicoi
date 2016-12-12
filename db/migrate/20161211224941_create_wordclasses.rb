class CreateWordclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :wordclasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
