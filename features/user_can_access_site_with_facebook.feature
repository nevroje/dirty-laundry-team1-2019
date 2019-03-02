Feature: User can access the site with facebook


  Background:
    Given we have 1 laundry

  Scenario: Visitor can click 'Login with facebook' and be authorized
    Given I am on the "Landing" page
    And I click "Login with Facebook"
    Then I should be redirected to index page
    And I should see "Successfully authenticated from Facebook account"
   