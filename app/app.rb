require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
  	erb :'links/index'
  end

  post '/links' do
  	 redirect '/links'
  end

run! if app_file == $0

end
