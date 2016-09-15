Given(/^"([^"]*)" has written the following articles:$/) do |name, table|
  table.hashes.each do |hash|
    user = User.find_by(name: name)
    title = hash[:title]
    body = hash[:body]
    FactoryGirl.create(:article, title: title, body: body, user: user)
  end
end
