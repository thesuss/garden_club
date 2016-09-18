Given(/^article "([^"]*)" has a rating of "([^"]*)"$/) do |title, rating|
  article = Article.find_by(title: title)
  user = User.first
  article.rate(rating, user, "rating")
  expect(article.rating_average[:avg]).to eq rating.to_f
end

Then(/^I should see "([^"]*)" stars$/) do |rating|
  expect(page).to have_xpath('//div[@data-rating=' + rating + ']')
end

When(/^I click on "([^"]*)" stars$/) do |stars|
  # page.evaluate_script("$('.stars').attr('data-rating')")
  # page.execute_script("$('<input />').val('4')")
  # page.execute_script("document.getElementByName('.score').value = '4'");
  # page.execute_script("$('.score').val('#{star_rating(stars)}')")
end

def star_rating(stars)
  case stars
  when "1"
    "bad"
  when "2"
    "good"
  when "3"
    "regular"
  when "4"
    "good"
  when "5"
    "gorgeous"
  else
    "This isn't a div name"
  end
end
