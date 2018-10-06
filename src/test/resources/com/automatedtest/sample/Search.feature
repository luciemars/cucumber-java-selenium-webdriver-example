Feature: Search


  @search @search_01
  Scenario Outline: Search hiptest (uid:f553cdd4-723e-4eb8-aa9f-a6af0f3ff7e3)
    Given A user navigates to HomePage "fr"
    When a user searches for "hiptest"
    Then "https://hiptest.com/" is displayed in the first "<nbOfResultsToSearch>" results

    Examples:
      | nbOfResultsToSearch | hiptest-uid |
      | 3 | uid:e46448ef-6927-407e-a69b-3baa25b75ad3 |
