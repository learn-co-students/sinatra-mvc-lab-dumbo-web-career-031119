require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @translated = PigLatinizer.new(params[:user_phrase])
        erb :oinkers
    end
end