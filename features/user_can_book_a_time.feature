Feature: User can book a laundry slot

As a User
In order to be able to do my laundry
I would like to be able to book a timeslot in the calendar

    Scenario:
        Given I am on the "Landing" page
        When I click on "9:00" on "tomorrow"
        Then I should see "Would you like to book this timeslot?"
        When I click on "yes"
        Then I should see "Booking was successfully created."
