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
And the user "amber@random.com" should exist with name "Amber"

Scenario Outline: User sign up sad path
  Given I am on the "registration" page
  When I fill in the form with data :
  | Name   | Email   | Email Confirmation | Password   | Password Confirmation   |
  | <name> | <email> | <email_confirmation> | <password> | <password_confirmation> |
  When I click the "Register" button
  Then I should be on the "registration" page
  And I should see <error>

Scenarios:
  | name  | email            | email_confirmation | password | password_confirmation   | error |
  | Jenny | jenny@random.com | jenny@ranom.com    | password | password   | "Email confirmation doesn't match" |
  | Jenny | jenny@random.com | jenny@random.com   | password | paord   | "Password confirmation doesn't match" |
  |       | jenny@random.com | jenny@random.com   | password | password   | "Name can't be blank" |
  | Jenny | jennyrandom.com  | jennyrandom.com    | password | password   | "Email is invalid" |
  | Jenny | jenny@random.com | jenny@random.com   |          |            | "Password can't be blank" |
  | Jenny |                  |                    | password | password   | "Email can't be blank" |
