module BaseConverter
  class Converter
    attr_reader :value

    def initialize(number, bit_length=nil)
      @value = number
      @bit_length = bit_length || value.length
      post_initialization
    end

    def post_initialization
      nil
    end

    def generate_place_values(value, bit_length, base)
      (0...bit_length).map {|i| base**i}.reverse
    end
  end
end
