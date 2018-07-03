feature 'Viewing bookmarks' do
  scenario 'Seeing Bookmarks after clicking view' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://google.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://youtube.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://rubygems.org')")

    visit '/'
    click_button 'View bookmarks'
    expect(page).to have_content 'http://google.com https://youtube.com https://rubygems.org'
  end
end
