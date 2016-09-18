Given(/^article "([^"]*)" has a rating of "([^"]*)"$/) do |title, rating|
  article = Article.find_by(title: title)
  user = User.first
  article.rate(rating, user, "rating")
  expect(article.rating_average[:avg]).to eq rating.to_f
end
