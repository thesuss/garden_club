Feature: As a gardener
  in order to access all the bits of the site
  I would like to be able to register.

Scenario: Register as a user
Given I am on the "registration" page
Then I should see "Register"
When I fill in "Name" with "Amber"
And I fill in "Email" with "amber@random.com"
And I fill in "Email Confirmation" with "amber@random.com"
And I fill in "Password" with "password"
And I fill in "Password Confirmation" with "password"
When I click the "Register" button
Then I should see "Successfully registered"
