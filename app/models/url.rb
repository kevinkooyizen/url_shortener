class Url < ApplicationRecord
	def shorten
		self.short_url = Array.new(5){[*"A".."Z", *"0".."9"].sample}.join
	end
end
