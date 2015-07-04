class Sieve
  attr_reader :numbers

  def initialize value
    @numbers = (2..value).to_a
  end

  def primes
    numbers.each do |n|
      numbers.delete_if {|i| i > n && i % n == 0 }
    end
  end
end
