Feature: As a user
  in order to access paid parts of the site
  I would like to buy pro membership.

Background:
  Given the following users exist:
    | name   | email           |
    | Anna   | anna@random.com |
    | Jimi   | jimi@random.com |

Scenario: I sign up for my paid membership
  Given I am logged in as "anna@random.com"
  And I am on the "profile" page for "Anna"
  When I click the "Pro" link
  Then I should see "Sign up for pro membership"
