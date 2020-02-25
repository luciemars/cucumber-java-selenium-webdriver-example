Feature: Search


  @search @search_01
  Scenario Outline: Search cucumber studio
    Given A user navigates to HomePage "fr"
    When a user searches for "cucumber studio"
    Then "CucumberStudio" is displayed in the first "<nbOfResultsToSearch>" results

    Examples:
      | nbOfResultsToSearch |
      | 3 |
