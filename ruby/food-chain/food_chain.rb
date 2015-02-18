class FoodChainSong
  LYRICS = {
    1 => { animal: "fly", reaction: "", affect: ""},
    2 => { animal: "spider", reaction: "It wriggled and jiggled and tickled inside her.\n", affect: " that wriggled and jiggled and tickled inside her"},
    3 => { animal: "bird", reaction: "How absurd to swallow a bird!\n", affect: ""},
    4 => { animal: "cat", reaction: "Imagine that, to swallow a cat!\n", affect: ""},
    5 => { animal: "dog", reaction: "What a hog, to swallow a dog!\n", affect: ""},
    6 => { animal: "goat", reaction: "Just opened her throat and swallowed a goat!\n", affect: ""},
    7 => { animal: "cow", reaction: "I don't know how she swallowed a cow!\n", affect: ""},
    8 => { animal: "horse", reaction: "She's dead, of course!\n", affect: ""}
  }

  def verse number    
    song = "I know an old lady who swallowed a #{LYRICS[number][:animal]}.\n"
    song << LYRICS[number][:reaction]

    unless number == 8
      unless number == 1
        number.downto(2) do |i|
          song << "She swallowed the #{LYRICS[i][:animal]} to catch the #{LYRICS[i-1][:animal]}#{LYRICS[i-1][:affect]}.\n"
        end
      end
    end

    song <<  "I don't know why she swallowed the fly. Perhaps she'll die.\n"
  end
end
