# it defines the basic mathematical functionalities like add, subtract, square root etc.
class Calc

	def initialize    #take the argument to set the calci to a state 
		@res = 0
	end

	def add(number)
		@res = @res + number
	end

	def subtract(number)
		@res = @res - number
	end
	
	def multiply(number)
		@res = @res * number
	end

	def divide(number)
		if number == 0 
			return false
		end
		@res = @res / number
	end

	def cancel
		@res = 0
	end

	def abs()
		if(@res < 0)
			@res = @res * (-1)
		else
			return @res
		end
	end

	def neg()
			@res = @res * (-1)
	end

	def sqrt()
		if @res < 0
			"can't get square root of a negative number"
			return false
		else
			@res = @res ** 0.5
		end
	end

	def cubert()
		if @res < 0
			"can't get cube root of a negative number"
		else
			@res = @res ** (1.0/3.0)
		end
	end

	def sqr()
			@res = @res ** 2
	end

	def cube()
		@res = @res ** 3
	end
end