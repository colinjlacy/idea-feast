# myapp.rb
require 'sinatra'

get '/' do
	File.read(File.join('views', 'template.html'))
end

get '/static/?' do
	File.read(File.join('views', 'template.html'))
end