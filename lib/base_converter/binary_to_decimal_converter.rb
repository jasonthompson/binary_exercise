require_relative './converter'

module BaseConverter
  class BinaryToDecimalConverter < Converter
    def convert
      multiply_digits_by_place_values.reduce(:+)
    end

    private


    def multiply_digits_by_place_values
      binary_digits.map.with_index do |digit, v|
        digit.to_i * @place_values[v]
      end
    end

    def binary_digits
      value.chars
    end
  end
end
