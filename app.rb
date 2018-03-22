require 'sinatra/base'

class FTRatings < Sinatra::Base

    ratings = []

    get '/' do
        erb :index
    end

    post '/create-new-rating' do
        redirect '/confirmation'
    end

    get '/confirmation' do
        erb :confirmation
    end

    run! if app_file == $0
end