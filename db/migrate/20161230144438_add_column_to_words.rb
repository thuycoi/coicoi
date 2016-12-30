class AddColumnToWords < ActiveRecord::Migration[5.0]
  def change
    add_reference :words, :words, foreign_key: true
    add_column :words, :example, :text
    
  end
end
