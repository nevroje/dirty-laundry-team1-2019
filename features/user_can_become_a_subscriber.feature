Feature: User can become a subscriber
  As a user
  In order to book multiple slots
  I need to become a subscriber

  Background:
    Given these users exist in our database:
      | email             | role        |
      | thomas@craft.se   | visitor     |
      | amanda@mail.se    | subscriber  |
    And we have 1 laundry
    And I am on the "Landing" page

  Scenario: Subscriber is authorized to book four laundry slots
    Given I am logged in as "amanda@mail.se"
    And show me the page
    When I click on "08:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    When I click on "11:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    
  Scenario: Non-Subscriber is not authorized to book multiple laundry slots
    Given I am logged in as "thomas@craft.se"
    When I click on "08:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    When I click on "11:00" on "tomorrow"
    Then I should see "You reached your booking limit!"