module Complement
  def self.of_dna(value)
    array_total = []
    rna_t = {"g" => "c", "c" => "g", "t" => "a", "a" => "u"}   
    value_temp = value.downcase.split("")
    value_temp.each { |i| array_total <<  rna_t[i].upcase }
    array_total.join("")
  end
end
