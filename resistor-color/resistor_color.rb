module ResistorColor
	COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
	def self.color_code(color)
		# result = case color
		# when 'black' then 0
		# when 'brown' then 1
		# when 'red' then 2
		# when 'orange'then 3
		# when 'yellow' then 4
		# when 'green' then 5
		# when 'blue' then 6
		# when 'violet' then 7
		# when 'grey' then 8
		# when 'white' then 9
		# when COLORS then COLORS	
		# end
		
		result = COLORS.index(color)
	end
end
