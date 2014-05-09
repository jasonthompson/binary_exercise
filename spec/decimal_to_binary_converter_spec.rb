require_relative '../lib/base_converter/decimal_to_binary_converter'
require 'minitest/spec'
require 'minitest/autorun'

module BaseConverter 
  describe DecimalToBinaryConverter do
    subject{DecimalToBinaryConverter.new(42, 8)}

    describe "#value" do
      it "returns the value of given number" do
        subject.value.must_equal 42
      end
    end

    describe "#convert" do
      it "returns a text representation of correct binary number" do
        subject.convert.must_equal "00101010"
      end
    end
  end
end
