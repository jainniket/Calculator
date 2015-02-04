# it separates the operand and operator 
class Parser

	def initialize
		@calc = Calc.new
	end

	def parse(to_parse)

	  opr = to_parse.split(' ')
	  a = @calc.method(opr[0])
	  if(opr[1].nil?)
	  	@res = a.call()
	  else
			opr[1] = opr[1].to_f
			@res = a.call(opr[1])
		end
    return @res
	end
end