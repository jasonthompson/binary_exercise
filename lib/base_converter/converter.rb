module BaseConverter
  class Converter
    attr_reader :value

    def initialize(number, bit_length=nil)
      @value = number
      bit_length ||= @value.length
      @place_values = generate_place_values(@value, bit_length)
      self.init if self.respond_to? :init
    end

    def generate_place_values(value, base)
      (0...base).map {|i| 2**i}.reverse
    end
  end
end
