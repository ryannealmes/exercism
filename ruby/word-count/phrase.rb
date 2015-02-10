class Phrase
  def initialize value
    @value = value
  end

  def word_count
    value_grouped_by_word.keys.each { |key| w[key] = w[key].count }
  end

  private

  def value_grouped_by_word
    @value_grouped_by_word ||= value.split(/\W+/).group_by{ |word| word }
  end
end
