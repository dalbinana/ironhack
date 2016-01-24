require "rspec"
require "./string_calculator"

RSpec.describe "#add" do
	it "returns OK when empty string is given" do
		result=StringCalculator.new.add(numbers: "")
		expect(result).to eq(0)
	end
end		


