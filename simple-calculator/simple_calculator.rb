class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  class ZeroDivisionError < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    case operation
    when '+'
       "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    when '-'
       "#{first_operand} - #{second_operand} = #{first_operand - second_operand}"
    when '*'
       "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    when '/'
      begin
        # raise ZeroDivisionError, 'Division by zero is not allowed.'
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      rescue
        "Division by zero is not allowed."
      end
    else
      raise UnsupportedOperation
    end
  end
end

SimpleCalculator.calculate(3, 0, '*')
