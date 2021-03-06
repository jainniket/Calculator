require 'spec_helper'

describe "Parser"  do 

	let(:p) {Parser.new}

	describe "calculates" do

		it "for addition" do
			expect(p.parse("add 5")).to eq(5.0)
		end

		it "for subtraction" do
			p.parse("add 5")
			expect(p.parse("subtract 5")).to eq(0)
		end

		it "for multiply" do
			p.parse("add 5")
			expect(p.parse("multiply 5")).to eq(25)
		end

		it "for divide" do
			p.parse("add 5")
			expect(p.parse("divide 5")).to eq(1)
		end

		it "for cancel" do
			p.parse("add 5")
			expect(p.parse("cancel")).to eq(0)
		end

		it "for absolute value" do
			p.parse("add 5")
			expect(p.parse("abs")).to eq(5)
		end

		it "for negating the value" do
			p.parse("add 5")
			expect(p.parse("neg")).to eq(-5)
		end

		it "for square root" do
			p.parse("add 25")
			expect(p.parse("sqrt")).to eq(5)
		end

		it "for cube root" do
			p.parse("add 27")
			expect(p.parse("cubert")).to eq(3)
		end

		it "for squre" do
			p.parse("add 5")
			expect(p.parse("sqr")).to eq(25)
		end

		it "for cube" do
			p.parse("add 3")
			expect(p.parse("cube")).to eq(27)
		end

		it "for repeating the history" do
			p.parse("add 3")
			p.parse("subtract 1")
			expect(p.parse("repeat 2")).to eq(4)
		end

	end
end