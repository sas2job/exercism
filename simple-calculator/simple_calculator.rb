class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*', '-'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(a, b, operator)
    unless a.is_a?(Numeric) && b.is_a?(Numeric)
      raise ArgumentError, "Operands must be numbers."
    end

    unless ALLOWED_OPERATIONS.include?(operator)
      raise UnsupportedOperation, "Unsupported operation '#{operator}'."
    end

    case operator
    when '+'
      "#{a} + #{b} = #{a + b}"
    when '-'
      "#{a} - #{b} = #{a - b}"
    when '*'
      "#{a} * #{b} = #{a * b}"
    when '/'
      begin
        "#{a} / #{b} = #{a / b}"
      rescue ZeroDivisionError
        "Division by zero is not allowed."
      end
    end
  end
end
