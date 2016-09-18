Given(/^article "([^"]*)" has a rating of "([^"]*)"$/) do |title, rating|
  article = Article.find_by(title: title)
  user = User.first
  article.rate(rating, user, "rating")
  expect(article.rating_average[:avg]).to eq rating.to_f
end


Then(/^I should find a class with data-rating "([^"]*)"$/) do |rating|
  expect(page).to have_xpath('//div[@data-rating=' + rating + ']')
end
