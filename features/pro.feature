Feature: As a user
  in order to access the paid functions of the site
  I would like to be able to sign up for paid membership.

Background:
  Given the following users exist:
    | name   | email           | pro  |
    | Jimi   | jimi@random.com | true |

Scenario: See wether or not one is a pro member
  Given I am logged in as "jimi@random.com"
  And I am on the "profile" page for "Jimi"
  Then I should see "Jimi is a pro member"
  And I should not see "Jimi has not signed up for pro membership"
