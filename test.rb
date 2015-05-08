# myapp.rb
require 'sinatra'

get '/' do
	File.read(File.join('views', 'template.html'))
end