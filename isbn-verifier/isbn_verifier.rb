class IsbnVerifier
  def self.valid?(string)
    isbn = string.delete('-')

    return false unless isbn.length == 10

    return false unless isbn[0..8] =~ /^\d{9}$/ && isbn[9] =~ /^[0-9X]$/

    digits = isbn.chars.map.with_index do |ch, i|
      if ch == 'X'
        return false unless i == 9
        10
      else
        ch.to_i
      end
    end

    sum = digits.each_with_index.sum { |num, i| num * (10 - i) }

    sum % 11 == 0
  end
end
