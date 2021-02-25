Feature: Search page
        As a user I can go to the google page
@smoke
  Scenario: Visit google
    Given I navigate to "https://www.google.com/"
    Then I wait for 2 seconds
    And I navigate forward
    And I take screenshot
