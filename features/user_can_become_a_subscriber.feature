Feature: User can become a subscriber
  As a user
  In order to book multiple slots
  I need to become a subscriber

  Background:
    Given we have 1 laundry
    And we have 1 user with email "thomas@craft.se" and role "subscriber"
    And I am logged in as 'thomas@craft.se'

  Scenario: Subscriber is authorized to book four laundry slots
    And I am on the "Landing" page
    When I click on "08:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    When I click on "11:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    
  Scenario: Non-Subscriber is not authorized to book multiple laundry slots
    When I click on "08:00" on "tomorrow"
    Then I should see "Booking was successfully created."
    When I click on "11:00" on "tomorrow"
    Then I should see "You reached your booking limit!"