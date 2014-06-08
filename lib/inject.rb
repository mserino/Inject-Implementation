class Array
	def injected(number=self.delete_at(0))
		self.each do |element|
	        number = yield(number, element)
	      end
		number
	end
end