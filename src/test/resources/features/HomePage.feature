Feature: Search page
        As a user I can go to the google page
@smoke @high
  Scenario: Visit google
    Given I navigate to "https://www.bing.com/"
    Then I wait for 2 seconds
    And I navigate forward
    And I take screenshot
