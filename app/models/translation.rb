class Translation < ApplicationRecord
  belongs_to :german, class_name: 'Word', required: true
  belongs_to :vietnamese, class_name: 'Word', required: true
end
