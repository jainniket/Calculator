require "spec_helper"

describe "Application"  do 

	it "test the launch" do

		opr = Parser.new
  	allow(Parser).to receive(:new) { opr }
  	allow(Kernel).to receive(:gets) { "add 5" }
  	expect(opr).to receive(:parse).with("add 5")

  	calculator = Application.new
  	calculator.start_test

	end
end