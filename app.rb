require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    "key =" << session[:key].inspect
  end

  get '/set' do
    session[:key] = params[:key]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
