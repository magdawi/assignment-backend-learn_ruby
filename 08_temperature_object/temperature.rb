class Temperature
	  def initialize(scale)
	  	@scale = scale
	  end

	  def Temperature.from_celsius(degree)
	  	Temperature.new(:c => degree)
	  end

	  def Temperature.from_fahrenheit(degree)
	  	Temperature.new(:f => degree)
	  end

	  def in_fahrenheit()
	  	c = @scale[:c]
	  	f = @scale[:f]
	  	c == nil ? f : c * 9.0 / 5.0 + 32
	  end

	  def in_celsius()
	  	c = @scale[:c]
	  	f = @scale[:f]
	  	f == nil ? c : (f - 32) * 5.0 / 9.0
	  end
end

class Celsius < Temperature
	def initialize(c)
	  	@scale = Hash.new 
	  	@scale = {:c => c, :f => nil}
	end
end

class Fahrenheit < Temperature
	def initialize(f)
	  	@scale = Hash.new 
	  	@scale = {:c => nil, :f => f}
	end
end