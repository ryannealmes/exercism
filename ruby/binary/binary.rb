class Binary
  attr_reader :binary_string_characters

  VERSION = 1

  def initialize binary_string
    @binary_string_characters = binary_string.chars
    raise ArgumentError unless valid_binary_string?
  end

  def to_decimal
    binary_string_characters.reverse.each_with_index.map do |character, index|
      character.to_i * 2**index
    end.inject(:+)
  end

  def valid_binary_string?
    !binary_string_characters.any?{ |character| !(character == "1" || character == "0") }
  end
end
