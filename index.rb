require 'sinatra'

set :views, 'views'

get '/' do
	@content = "Hello world!"
	erb :index
end

get '/about' do
	@content = "Hello about!"
	erb :about
end

get '/blog' do
	@content = "Hello blog!"
	erb :blog
end

