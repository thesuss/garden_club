Given(/^I am on the "([^"]*)" page$/) do |page|
  visit registration_index_path
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
