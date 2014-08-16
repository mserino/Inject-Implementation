class Array
	
	def injected(accumulator = nil, &block)
		collection = self.dup
		accumulator ||= collection.shift
		collection.each do |item|
			accumulator = block.call(accumulator,item)
		end
		accumulator
	end

end