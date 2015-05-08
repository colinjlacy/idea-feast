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

get '/multiple/:this/params/:that/?' do
	"I see <strong>#{params['this']}</strong> and <strong>#{params['that']}</strong> in your route params!"
end

get '*' do
	ERROR
end