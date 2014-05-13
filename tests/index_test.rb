ENV['RACK_ENV'] = 'test'

require_relative '../index'
require 'test/unit'
require 'rack/test'

class IndexTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def test_index_route
		get '/'
		assert last_response.ok?
		assert_equal 'Hello world!', last_response.body
	end

	def test_index_about
		get '/about'
		assert last_response.ok?
		assert_equal 'Hello about!', last_response.body
	end

	def test_index_blog
		get '/blog'
		assert last_response.ok?
		assert_equal 'Hello blog!', last_response.body
	end
end