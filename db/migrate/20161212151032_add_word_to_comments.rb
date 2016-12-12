class AddWordToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :word, foreign_key: true
  end
end
