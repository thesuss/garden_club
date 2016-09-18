Given(/^article "([^"]*)" has a rating of "([^"]*)"$/) do |title, rating|
  article = Article.find_by(title: title)
  user = User.first
  article.rate(rating, user, nil)
  binding.pry
  expect(article.rating_average).to eq rating
end
