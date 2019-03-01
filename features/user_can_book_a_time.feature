Feature: User can book a laundry slot

As a User
In order to be able to do my laundry
I would like to be able to book a timeslot in the calendar

    Background:
        Given we have 1 laundry
        And we have 1 user with email 'thomas@craft.se'
        And I am logged in as 'thomas@craft.se'

    Scenario:
        Given I am on the "Landing" page
        When I click on "08:00" on "tomorrow"
        Then I should see "Booking was successfully created."
