class AddDefinitionToExample < ActiveRecord::Migration[5.0]
  def change
    add_reference :examples, :Definition, foreign_key: true
  end
end
