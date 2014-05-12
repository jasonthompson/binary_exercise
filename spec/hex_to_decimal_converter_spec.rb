require_relative '../lib/base_converter/hex_to_decimal_converter'
require 'minitest/spec'
require 'minitest/autorun'

module BaseConverter
  describe HexToDecimalConverter do
    subject{HexToDecimalConverter.new("4E")}

    describe "#value" do
      it "returns the value of given binary" do
        subject.value.must_equal "4E"
      end
    end

    describe "#convert" do
      it "returns a the correct decimal representation" do
        subject.convert.must_equal 78 
      end
    end
  end
end
