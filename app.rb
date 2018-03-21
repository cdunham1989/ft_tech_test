require 'sinatra/base'

class FTRatings < Sinatra::Base
    get '/' do
        erb :index
    end

    run! if app_file == $0
end