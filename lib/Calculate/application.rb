#starts the calculator application and identifies the user input						

class Application

	def initialize
		@opr = Parser.new
		@history = []
	end

	def start

		print "$ "
		input = gets.chomp

		while input != 'exit' do 	
			res = @opr.parse(input)
			puts res
			print "$ "
			input = gets.chomp
		end

	end

	def start_test
		input = Kernel.gets.chomp
		@opr.parse(input)
	end

end