class BinaryNumber
  attr_reader :value

  DIGIT_VALUES = [128, 64, 32, 16, 8, 4, 2, 1]

  def initialize(binary_num)
    @value = binary_num.chars
  end

  def to_decimal
    calculate_digits.reduce(:+)
  end

  private

  def calculate_digits
    value.map.with_index do |digit, i|
      digit.to_i * DIGIT_VALUES[i]
    end
  end
end

class DecimalNumber
  attr_reader :value

  DIGIT_VALUES = [128, 64, 32, 16, 8, 4, 2, 1]

  def initialize(decimal_num)
    @value = decimal_num
  end

  def to_binary
    calculate_digits
  end

  def calculate_digits
    accumulated_value = value
    binary = ""
    DIGIT_VALUES.each do |v|
      if  accumulated_value >= v
        binary << "1"
        accumulated_value = accumulated_value - v
      else
        binary << "0"
      end
    end
    binary
  end
end
