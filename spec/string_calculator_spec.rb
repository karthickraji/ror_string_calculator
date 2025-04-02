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
end
