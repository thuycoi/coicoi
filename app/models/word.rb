class Word < ApplicationRecord
  belongs_to :language
  belongs_to :wordclass

  has_many :favourites
  has_many :users, through => :favourites

  has_many :comments

  has_many :definitions

  has_many :german, class_name: 'Translation', foreign_key: 'german_id'
  has_many :vietnamese, class_name: 'Translation', foreign_key: 'vietnamese_id'

end
