module BinaryConversion
  class BinaryToDecimalConverter
    attr_reader :value

    def initialize(binary_num)
      @value = binary_num
      @place_values = generate_place_values(@value)
    end

    def convert
      mult_digits_by_place_values.reduce(:+)
    end

    private

    def generate_place_values(value)
      length = value.length
      place_value = 1
      (1...value.length).map do |place_value|
        place_value 
        place_value = place_value * 2
      end
    end

    def mult_digits_by_place_values
      binary_digits.map.with_index do |digit, v|
        digit.to_i * @place_values[v]
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
      @current_value = @value
    end

    def convert
      map_place_values_to_digits.join
    end

    private

    def calculate_digit_value(decimal_value, place_value)
      result = "0"
      if(decimal_value >= place_value)
        result = "1"
        @current_value = decimal_value - place_value
      end
      result
    end

    def map_place_values_to_digits
      PLACE_VALUES.map do |place_value|
        calculate_digit_value(@current_value, place_value)
      end
    end
  end
end
