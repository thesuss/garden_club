Feature: As a user
  in order to share my views on gardening
  I would like to be able to write and share articles.

Background:
  Given the following users exist:
  | name   | email           | password  |  password_confirmation |
  | Anna   | anna@random.com | password  |  password              |

Scenario: Trying to write an article when not logged in
  Given I on someones compose page
  Then I should see "You are not logged in"

Scenario: Write an article
  Given I am logged in
  And I am on the "compose" page for "Anna"
  Then I should see "Publish article"
  When I fill in "Title" with "Article Title"
  And I fill in "Body" with "Article Body"
  And I click the "Publish article" button
  And I am on the "compose" page for "Anna"
  When I fill in "Title" with "Article Title 2"
  And I fill in "Body" with "Article Body 2"
  And I click the "Publish article" button
  When I am on "articles" page for "Anna"
  Then I should see "Article Title"
  And I should see "Article Title 2"
