module BinaryConversion
  DIGIT_VALUES ||= [128, 64, 32, 16, 8, 4, 2, 1]

  class BinaryToDecimalConverter
    attr_reader :value

    def initialize(binary_num)
      @value = binary_num
    end

    def convert
      map_digits_to_values.reduce(:+)
    end

    private

    def map_digits_to_values
      binary_digits.map.with_index do |digit, v|
        digit.to_i * DIGIT_VALUES[v]
      end
    end

    def binary_digits
      value.chars
    end
  end

  class DecimalToBinaryConverter 
    attr_reader :value

    def initialize(decimal_num)
      @value = decimal_num.to_i
    end

    def convert 
      map_values_to_digits.join
    end

    private

    def zero_or_one(binary_value)
      current_value ||= value
      if current_value >= binary_value
        current_value = current_value - binary_value
        return "1"
      else
        return "0"
      end
    end

    def map_values_to_digits
      DIGIT_VALUES.map do |v|
        zero_or_one(v)
      end
    end
  end
end
