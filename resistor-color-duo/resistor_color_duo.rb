module ResistorColorDuo
  def self.value(input)
    result = []
    colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
    input.each { |i| result << colors.index(i) }
    result.join("").to_s[0..1].to_i 
  end
end
