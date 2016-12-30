class Search < ActiveRecord::Base

  def words
    @words ||= find_words
  end

private

  def find_words
    words = Word.all

    words = Word.order(:body)
    words = words.where("body like ?", "%#{keywords}%") if keywords.present?
    words = words.where(wordclass_id: wordclass_id) if wordclass_id.present?
    return words
  end
end
