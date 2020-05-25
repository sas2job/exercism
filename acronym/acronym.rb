module Acronym
 def self.abbreviate(value)
  result = ""
    input = value.split(/\W+/)
    input.map {|word| result += word[0].upcase}
    result
  end
end
