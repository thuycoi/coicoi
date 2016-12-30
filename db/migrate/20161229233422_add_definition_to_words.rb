class AddDefinitionToWords < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :Definition, :text
  end
end
