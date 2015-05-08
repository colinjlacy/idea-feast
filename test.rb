# myapp.rb
require 'sinatra'

get '/' do
	File.read(File.join('views', 'template.html'))
end

get '/static/?' do
	File.read(File.join('views', 'template.html'))
end

get '/params/:whatever/?' do
	"You entered #{params['whatever']} as a route parameter"
end

get '*' do
	ERROR
end