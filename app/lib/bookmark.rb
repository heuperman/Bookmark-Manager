require 'pg'
class Bookmark


  def self.all
    begin
      con = PG.connect :dbname => 'bookmark_manager'
      result = con.exec "SELECT * FROM bookmarks"
      result.map { |bookmark| bookmark['url'] }
    end
  end
end
