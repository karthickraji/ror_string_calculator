require "string_calculator"

RSpec.describe StringCalculator, "#add" do 
  context "If I pass an empty string then," do
    it "Output should be returned zero" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end
