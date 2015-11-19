class Book
	def title
    	@title
  	end

  	def title=(str)
    	littlewords = ["and", "the", "over", "in", "of", "a", "an"]
		array = str.split(' ')
		array.each do |a|
			if littlewords.include?(a)
				a.downcase!
			else
				a.capitalize!
			end
		end
		array[0].capitalize!
		@title = array.join(' ')
  	end
end