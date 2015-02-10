require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

#configure sinatra to use better errors middleware
configure :development do
	use BetterErrors::Middleware
	BetterErrors.application_root = __dir__
end

require_relative './greeter'


franky = Frank.new

# our application's routes
get '/hi'  do 
	franky.greet	
end

get '/quote' do 
	franky.quote
end

get '/quote/:tag' do
	franky.quote(params[:tag])	
end


get '/photo' do
	n = (rand * 3).round + 1
	# send_file "public/sinpic#{n}.jpg"
	send_file File.expand_path("sinpic#{n}.jpg", settings.public_folder)
	# or send_file File.expand_path("#{rand(1..4)}.jpg", settings.public_folder)
	

end




