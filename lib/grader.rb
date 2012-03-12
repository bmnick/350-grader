require "rubygems"
require "bundler/setup"

require 'sinatra/base'
require 'haml'
require 'sass'

class UrlShort < Sinatra::Base
	configure do
		set :haml, :format => :html5
	end

	get '/' do
		haml :index
	end

	get '/style.css' do
		sass :style
	end
end

