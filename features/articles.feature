Feature: As a user
  in order to share my views on gardening
  I would like to be able to write and share articles.

  Background:
  Given the following users exist:
  | name   | email           |  password |  password_confirmation |
  | Anna   | anna@random.com | password  |  password              |

Scenario: Write an article
  Given I am logged in
  And I am on the "compose" page for "Anna"
  Then I should see "Publish article"
