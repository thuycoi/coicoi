class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :words, :Definition, :definition
  end
end
