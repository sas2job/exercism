module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]
  def self.value(input)
    input[0..1].map{ |i| COLORS.index(i) }.join.to_i
  end
end
