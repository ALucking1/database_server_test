require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    redirect to('/set')
  end

  get '/set' do
    params[:key] = params[:value]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
