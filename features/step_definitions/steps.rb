Given(/^I am on the "([^"]*)" page$/) do |page|
  visit new_user_registration_path
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should be on the "([^"]*)" page$/) do |page|
  expect(current_path).to eq registration_index_path
end


Given(/^I am logged in$/) do
  visit new_user_session_path
  fill_in "Email", with: 'anna@random.com'
  fill_in "Password", with: 'password'
  click_button "Log in"
end

Given(/^I am on the "([^"]*)" page for "([^"]*)"$/) do |page, name|
  user_id = User.find_by(name: name).id
  visit new_user_article_path(user_id)
  expect(current_path).to eq new_user_article_path(@user_id)
end

When(/^I am on "([^"]*)" page for "([^"]*)"$/) do |page, name|
  user_id = User.find_by(name: name).id
  visit user_articles_path(user_id)
  expect(current_path).to eq user_articles_path(@user_id)
end

Given(/^I on someones compose page$/) do
  visit new_user_article_path(1)
end
