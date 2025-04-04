require "string_calculator"

RSpec.describe StringCalculator, "#add" do 
  context "If I pass an empty string then," do
    it "Output should be returned zero" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context "Pass string numbers" do
    it "Given 1 then it should be returned 1" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "Given 1 and 5 then it should be sum and returned 6" do
      expect(StringCalculator.add("1, 5")).to eq(6)
    end

    it "Handle any amount of numbers - Given 243 and 357 then it should be sum and returned 600" do
      expect(StringCalculator.add("243, 357")).to eq(600)
    end
  end

  context "If pass new lines between numbers then" do
    it "Numbers only can be taken and added them" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end

  context "If pass delimiters between numbers then" do
    it "Numbers only can be taken and added them" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end

  context "Negative numbers" do
    it "If we pass negative number then throw an exception" do
      expect(StringCalculator.add("-3")).to eq("The negative numbers are not allowed: -3")
    end

    it "If we pass negative numbers then throw an exception" do
      expect(StringCalculator.add("-3, -6")).to eq("The negative numbers are not allowed: -3,-6")
    end
  end
end
