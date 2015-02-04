
require 'spec_helper'

describe "Calc"  do 

	let(:cal) {Calc.new}

	describe "performs the calculation" do

		it "adds" do
			expect(cal.add(10)).to eq(10)
		end

		it "subtracts" do
			cal.add(10)
			expect(cal.subtract(5)).to eq(5)
		end

		it "multipy" do
			cal.add(10)
			cal.subtract(5)
			expect(cal.multiply(5)).to eq(25)
		end

		it "divides" do
			cal.add(10)
			cal.subtract(2)
			expect(cal.divide(8)).to eq(1)
		end

		it "divides by 0" do
			cal.add(10)
			cal.subtract(2)
			expect(cal.divide(0)).to eq(false)
		end

		it "clears the result" do
			expect(cal.cancel).to eq(0)
		end

		it "square root" do
			cal.add(4)
			expect(cal.sqrt).to eq(2)
		end

		it "square" do
			cal.add(4)
			expect(cal.sqr).to eq(16)
		end

		it "cube root" do
			cal.add(27)
			expect(cal.cubert).to eq(3)
		end

		it "cube" do
			cal.add(3)
			expect(cal.cube).to eq(27)
		end

		it "negates" do
			cal.add(-7)
			expect(cal.neg).to eq(7.0)
		end

		it "absolutes the number" do
			cal.add(-7)
			expect(cal.abs).to eq(7.0)
		end

	end
end
