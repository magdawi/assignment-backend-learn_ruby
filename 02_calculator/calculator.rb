def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(arr)
	sum = 0
	arr.each do |a|
		sum += a
	end
	sum
end

def multiply(arr)
	r = 1
	arr.each do |a|
		r *= a
	end
	r
end

def power(a,b)
	a**b
end

def factorial(n)
	r = 0
	if n == 0 or n ==1
		r =1
	else
		r = (1..n).inject(:*)
	end
	r
end