Feature: Home page


  @home_page @home_page_display
  Scenario Outline: Check page display
    Given A user navigates to HomePage "<countryCode>"
    Then Google logo is displayed
    And search bar is displayed

    Examples:
      | countryCode |
      | fr |
      | com |

  @home_page @home_page_title
  Scenario: Check title
    Given A user navigates to HomePage "fr"
    Then page title is "Google"
