module Pangram
    def self.is_pangram?(str)
      str.downcase!
      'abcdefghijklmnopqrstuvwxyz'.chars.delete_if do |char|
        str.match(char)
      end.count == 0
    end
end
module BookKeeping
  VERSION = 2
end
