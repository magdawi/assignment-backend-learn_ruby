def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, number = 2)
	([word] * number).join ' '
end

def start_of_word(word, p)
	word[0..p-1]
end

def first_word(string)
	string.split(' ')[0]
end

def titleize(string)
	littlewords = ["and", "the", "over"]
	array = string.split(' ')
	array.each do |a|
		if littlewords.include?(a)
			a.downcase!
		else
			a.capitalize!
		end
	end
	array[0].capitalize!
	array.join(' ')
end