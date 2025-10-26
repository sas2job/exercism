class Isogram
  def self.isogram?(input)
    letters = input.downcase.tr("-","").tr(" ","").chars
    letters.uniq.length == letters.length
  end
end