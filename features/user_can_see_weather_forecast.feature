Feature: User can see weather forecast

    As a user
    In order to plan my washing days
    I would like to know the weather forecast

    Scenario: User can see weather forecast on the page
        Given I am on the "Landing" page
        Then I should see "Thursday 28th of feb"
        And I should see "5 degrees and Cloudy"
