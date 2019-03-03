Feature: User can see a calendar on landing page

  As a user
  In order to navigate the week days
  It should have a calendar

  Background:
    Given we have 1 laundry
          
  Scenario:
    Given I am on the "Landing" page
    Then I should see "Dirty Laundry"
