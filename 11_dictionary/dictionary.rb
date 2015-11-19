class Dictionary
	attr_accessor :entries
	def initialize()
		@entries = Hash.new
	end
	def add(kv)
		if kv.is_a?(Hash)
			@entries.merge!(kv)
		else
			@entries[kv] = nil
		end
	end
	def keywords
		@entries.keys.sort
	end
	def include?(key)
		@entries.has_key?(key)
	end
	def find(k)
		@entries.select {|key,v| key =~ /#{k}/}
	end
	def printable()
		o = ""
		@entries.sort.each do |k, v|
			o += "[#{k}] \"#{v}\"\n"
		end
		o[0...-1]
	end
end