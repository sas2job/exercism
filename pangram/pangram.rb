module Pangram
  def self.pangram?(input)
    missing_letters =('a'..'z').to_a
    if input == ''
      false
    end 
    value = input.split(' ').join().downcase.split('')
    value.each do |i| 
      if missing_letters.include?(i)
        missing_letters.delete(i)
      end   
    end
    if missing_letters.size == 0
      true
    else
      false 
    end 
  end
end
