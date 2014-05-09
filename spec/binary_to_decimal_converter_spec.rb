require_relative '../lib/base_converter/binary_to_decimal_converter'
require 'minitest/spec'
require 'minitest/autorun'

module BaseConverter
  describe BinaryToDecimalConverter do
    subject{BinaryToDecimalConverter.new("00111000")}

    describe "#value" do
      it "returns the value of given binary" do
        subject.value.must_equal "00111000"
      end
    end

    describe "#convert" do
      it "returns a the correct decimal representation" do
        subject.convert.must_equal 56
      end
    end
  end
end
