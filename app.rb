require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
	get ('/') {erb :user_input }

	post ('/piglatinize') {
		@usrinput = PigLatinizer.new(params[:user_phrase])
		erb :piglatinize
	}
end