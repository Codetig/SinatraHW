
#Make class
# class Frank
# 	def greet
# 		"<h4>Hi, I am Franky! I sing like bee, beetle that is.</h4>"
# 	end

# 	def quote tag
# 		begin
# 			sin_quotes = {
# 		:love => ["Beverly <br>", "You may be a puzzle, but I like the way the parts fit. <br>", "beach "],
# 		:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.<br>"],
# 		:life => ["The best revenge is massive success.<br> ", "The big lesson in life, baby, is never be scared of anyone or anything. <br>", "I'm gonna live till I die. <br>"]
# 	}
	
# 		["<h2>Quotes matching tag: '#{tag}'</h2><ul>"
# 		].concat(["<li><h3> #{sin_quotes[tag.to_sym].sample} </h3></li>"]).push("</ul>")
# 		rescue Exception
# 			"Please enter a valid route or value"
# 		end
		
# 	end
# end

class Frank
	def greet
		"<h4>Hi, I am Franky! I sing like bee, beetle that is.</h4>"
	end
#Not working here before because 'send_file' is a Sinatra method and adding it here or requiring Sinatra is not good practice
	# def photo
	# 	send_file File.expand_path("sinpic#{rand(1..4)}", settings.public_folder)
	# end

	def quote tag="alcohol" 

		sin_quotes = {
		:love => ["Beverly <br>", "You may be a puzzle, but I like the way the parts fit. <br>", "beach "],
		:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.<br>"],
		:life => ["The best is yet to come and won't that be fine.","The best revenge is massive success.", "The big lesson in life, baby, is never be scared of anyone or anything.", "I'm gonna live till I die."]
		}

		if tag.to_sym == :love || tag.to_sym == :alcohol || tag.to_sym == :life
			["<h2>Quotes matching tag: '#{tag}'</h2><ul>"
			].concat(["<li><h3> #{sin_quotes[tag.to_sym].sample} </h3></li>"]).push("</ul>")
		elsif tag == nil
			tag = "life"
			["<h2>Quotes matching tag: '#{tag}'</h2><ul>"
			].concat(["<li><h3> #{sin_quotes[tag.to_sym].sample} </h3></li>"]).push("</ul>")
		else
			raise "tag must be 'life', 'alcohol' or 'love'"
		end
	end
end