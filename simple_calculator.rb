class SimpleCalculator
  def add(value1, value2)
    # raise UnexpectedMathError if value1.is_a?(String)
    value1 + value2
  end

  def subtract(value1, value2)
    value1 - value2
  end

  def multiply(value1, value2)
    value1 * value2
  end
  def divide(value1, value2)
    return 0 if value2 == 0
    value1 / value2
  end
end

class UnexpectedMathError

end
