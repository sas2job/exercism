class Darts
  attr_reader :score

  def initialize(x, y)
    dist   = Math.hypot(x, y)
    @score = case dist
               when 0..1 then 10
               when 1..5 then 5
               when 5..10 then 1
               else 0
             end
  end
end

