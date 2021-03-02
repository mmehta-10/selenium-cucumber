Feature: Visit Jenkins Blue ocean page
  As a user I can go to the Jenkins documentation, click on Blue Ocean link and check the landing page.

#  @high
#  Scenario: Get the Blue ocean section on Jenkins website.
#    Given I navigate to "https://www.jenkins.io/doc/"
#    When I click on link "Blue Ocean"
#    And I wait for 5 seconds
#    Then I should be taken to page with header "Blue Ocean"

    @medium
  Scenario: Get the Blue ocean section on Jenkins website.
    Given I navigate to "https://www.jenkins.io/doc/"
    When I click on element having xpath "blueOcean"
    And I wait for 5 seconds
    Then element having xpath "blueOceanHeader" should be present