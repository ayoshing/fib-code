# "Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms."

class Fib
	attr_accessor :term
	attr_reader :memo

	def initialize(term=nil)
		@memo = [1,2]
		@term = term.nil? || term < 2 ? @memo.length()-1 : term-1
		@sum_of_even_terms = 0
	end

	def sequence(term=nil)
		term = term.nil? ? @term : term-1
		self.calc_fib(term)
	end

	def sum_of_even_terms
		term = 1  #index of 1 is equivalent to even valued term 2

		while @memo[term]
			@sum_of_even_terms += @memo[term]
			term += 2
		end

		@sum_of_even_terms
	end

  def reset_memo()
		@memo = [1,2]
	end

	private
	def calc_fib(term=@term)
		@value = nil

		if @memo[term]
			@value = @memo[term]
		else
			@value = term < 2 ? term : calc_fib(term-1) + calc_fib(term-2)

			@memo[term] = @value
		end

		@value
	end
end

fib = Fib.new(10)
puts fib.sequence()