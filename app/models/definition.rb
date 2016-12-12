class Definition < ApplicationRecord
  has_many :examples

  belongs_to :word
end
