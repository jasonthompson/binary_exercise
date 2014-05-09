module BaseConverter 
  PLACE_VALUES = [128, 64, 32, 16, 8, 4, 2, 1]

  class BinaryToDecimalConverter
    attr_reader :value

    def initialize(binary_num)
      @value = binary_num
    end

    def convert
      multiply_digits_by_place_values.reduce(:+)
    end

    private

    def multiply_digits_by_place_values
      binary_digits.map.with_index do |digit, v|
        digit.to_i * PLACE_VALUES[v]
      end
    end

    def binary_digits
      value.chars
    end
  end
end
