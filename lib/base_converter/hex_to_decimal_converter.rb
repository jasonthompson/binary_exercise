require_relative './converter'

module BaseConverter
  class HexToDecimalConverter < Converter
      LETTERS = {'A' => 10,
                 'B' => 11,
                 'C' => 12,
                 'D' => 13,
                 'E' => 14,
                 'F' => 15}

    def post_initialization
      @value_in_numbers = hex_to_decimal(value)
      @place_values = generate_place_values(@value_in_numbers, @bit_length, 16)
    end

    def convert
      multiply_digits_by_place_values.reduce(:+)
    end

    private

    def hex_to_decimal(hex_number_string)
      response = []
      hex_number_string.each_char do |char|
        if char.to_i == 0
          response << LETTERS[char] 
        else
          response << char
        end
      end
      response
    end

    def multiply_digits_by_place_values
      digits.map.with_index do |digit, v|
        digit.to_i * @place_values[v]
      end
    end

    def digits
      @value_in_numbers
    end
  end
end
