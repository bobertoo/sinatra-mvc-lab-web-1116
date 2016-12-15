require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Pig Latinizer!"
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase = params["user_phrase"]
    @word = PigLatinizer.new
    @final = @word.to_pig_latin(@user_phrase)
    erb :piglatinize
  end
end
