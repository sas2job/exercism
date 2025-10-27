class AssemblyLine
  BASE_RATE = 221.0
  def initialize(speed)
    @speed = speed
  end

  def success_rate
    case @speed
    when 1..4 then 1.0
    when 5..8 then 0.9
    when 9    then 0.8
    when 10   then 0.77
    else 1.0
    end
  end
  
  def production_rate_per_hour
    @speed * BASE_RATE * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
