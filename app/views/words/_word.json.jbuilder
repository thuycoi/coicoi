json.extract! word, :id, :body,:definition,  :note, :language_id, :wordclass_id, :created_at, :updated_at
json.url word_url(word, format: :json)
