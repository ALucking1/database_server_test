require 'sinatra/base'
require './lib/query'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    @query = Query.new
  end

  get '/set' do
    @query = Query.new
    @query.items[params.keys[0]] = params[params.keys[0]]
    session[:query] = @query
  end

  get '/get' do
    @query = session[:query]
    @query.items[params[params.keys[0]]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
