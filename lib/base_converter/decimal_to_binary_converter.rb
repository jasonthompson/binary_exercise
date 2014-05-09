module BaseConverter
  PLACE_VALUES = [128, 64, 32, 16, 8, 4, 2, 1]

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
