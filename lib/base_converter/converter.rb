module BaseConverter
  class Converter
    attr_reader :value

    def initialize(number, base=nil)
      @value = number
      base ||= @value.length
      @place_values = generate_place_values(@value, base)
      self.init
    end

    def generate_place_values(value, base)
      (0...base).map {|i| 2**i}.reverse
    end
  end
end
