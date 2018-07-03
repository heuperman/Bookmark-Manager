require 'sinatra'
require './app/lib/bookmark'

# Acts as the controller between user, views and method
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
