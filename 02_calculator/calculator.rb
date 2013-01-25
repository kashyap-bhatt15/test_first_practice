def add(n1, n2)
	n1 + n2
end

def subtract(n1,n2)
	n1 - n2
end

def sum(array)
	sum = 0
	array.each do |a|
		sum += a
	end
	sum
end

def multiply(*nos)
	mul = 1
	nos.each do |no|
		mul *= no
	end
	mul
end

def power(base, exponent)
	base == 0 ? 0 : (exponent == 0 ? 1 : base ** exponent)
end

def factorial(no)
	no <= 1 ? no : no * factorial(no - 1)
end