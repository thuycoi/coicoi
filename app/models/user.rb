class User < ApplicationRecord
  has_many :favourites
  has_many :words, through => :favourites
end
