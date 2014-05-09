require_relative 'converter'

module BaseConverter
  class DecimalToBinaryConverter < Converter
    def init
      @current_value = value
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
      @place_values.map do |place_value|
        calculate_digit_value(@current_value, place_value)
      end
    end
  end
end
