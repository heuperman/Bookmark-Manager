require 'sinatra'
require './app/lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/view' do
    bookmark = Bookmark.new
    @bookmarks = bookmark.all
    erb :view
  end

  run! if app_file == $PROGRAM_NAME
end
