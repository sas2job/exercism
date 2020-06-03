module Acronym
 def self.abbreviate(value)
    value.scan( /\b[a-zA-Z]/).join("").upcase
  end
end
