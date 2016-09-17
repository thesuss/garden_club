Feature: As a user
  in order to access the paid functions of the site
  I would like to be able to sign up for paid membership.

Background:
  Given the following users exist:
    | name   | email           | pro   |
    | Jimi   | jimi@random.com | true  |
    | Anne   | anne@random.com | false |


Scenario: See wether or not a user is a pro member
  Given I am logged in as "jimi@random.com"
  And I am on the "profile" page for "Jimi"
  Then I should see "Jimi is a pro member"
  And I should not see "Jimi has not signed up for pro membership"

Scenario: See wether or not a user is a pro member
  Given I am logged in as "anne@random.com"
  And I am on the "profile" page for "Anne"
  Then I should not see "Anne is a pro member"
  And I should see "Anne has not signed up for pro membership"

Scenario: See wether or not one is a pro member
  Given I am logged in as "jimi@random.com"
  And I am on the "Edit Profile" page for "Jimi"
  Then I should see "You are a pro member"
  And I should not see "Sign up for pro membership!"
