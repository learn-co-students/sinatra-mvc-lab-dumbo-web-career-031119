require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @phrase = PigLatinizer.new(params[:user_phrase])
        @phrase_pig_latin = @phrase.piglatinize(@phrase.string)

        erb :oinkers
    end
end