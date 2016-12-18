class FixTranslationAssociations < ActiveRecord::Migration[5.0]
  def change

    add_column :translations, :vietnamese_id, :integer
  end
end
