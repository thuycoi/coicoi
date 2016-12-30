class Word < ApplicationRecord
  belongs_to :language
  belongs_to :wordclass

  has_many :favourites
  has_many :users, through: :favourites

  has_many :comments

  has_many :definitions

  has_many :german_words, class_name: 'Translation', foreign_key: 'german_id'
  has_many :vietnamese_words, class_name: 'Translation', foreign_key: 'vietnamese_id'

  has_many :synonyms, class_name: 'Word', foreign_key: "words_id"
  belongs_to :synonym, class_name: "Word" ,  optional: true
end
