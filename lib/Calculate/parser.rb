# it separates the operand and operator 
class Parser

	def initialize
		@calc = Calc.new
		@history = []
	end

	def parse(to_parse)

		opr = to_parse.split(' ')

		if(opr[0] == "repeat")
			num = -1 * opr[1].to_i
			while num < 0 do
				self.calling_calculator(@history[num].split(' '))
				num +=1
			end
		else
			self.calling_calculator(opr)
			@history.push(to_parse)
		end
		return @res

	end 

	def calling_calculator(opr)

		a = @calc.method(opr[0])
		if(opr[1].nil?)
			@res = a.call()
		else
			opr[1] = opr[1].to_f
			@res = a.call(opr[1])
		end

	end

end