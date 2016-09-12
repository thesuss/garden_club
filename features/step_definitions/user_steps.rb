Then(/^the user "([^"]*)" should exist with name "([^"]*)"$/) do |email, name|
  expect((User.find_by(email: email))).not_to be nil
end
