Feature: Home page


  @home_page @home_page_display
  Scenario Outline: Check page display (uid:8701b6da-ae8f-40b2-a6ba-e4da58f83954)
    Given A user navigates to HomePage "<countryCode>"
    Then Google logo is displayed
    And search bar is displayed

    Examples:
      | countryCode | hiptest-uid |
      | fr | uid:f9abb2df-5669-4fec-aac8-55a189301ffe |
      | com | uid:d980e564-90fb-4d26-9c5e-8e9ed5c50a44 |

  @home_page @home_page_title
  Scenario: Check title (uid:4e9e6380-bffd-482d-9c6f-f4dd7b960398)
    Given A user navigates to HomePage "fr"
    Then page title is "Google"
