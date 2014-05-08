require_relative './binary'
require 'minitest/spec'
require 'minitest/autorun'

module BinaryConversion
  describe DecimalToBinaryConverter do
    subject{DecimalToBinaryConverter.new(42)}

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
