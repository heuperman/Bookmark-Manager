describe Bookmark do
  describe '$all' do
    it 'returns the bookmarks from the database' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://google.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://youtube.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://rubygems.org')")

      expected_bookmarks = ["http://google.com", "https://youtube.com", "https://rubygems.org"]
      expect(described_class.all).to eq expected_bookmarks
    end
  end
end
