require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Ideas < ActiveRecord::Base

end

configure do
	set :title, "ideaFeast"
	set :subheading, "A simple web application written in Ruby, demonstrating request-handling and database interactions."
	set :author, "Colin J Lacy"
end

get "/" do
	@ideas = Ideas.order("likes DESC")
	erb :"ideas"
end
