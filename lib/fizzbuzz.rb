def fizzbuzz(number)
	raise "Argument must be a number" if !number.is_a? Integer
	return "fizzbuzz" if number%3==0 && number%5==0
	return "fizz" if number%3==0
	return "buzz" if number%5==0
	number
end
