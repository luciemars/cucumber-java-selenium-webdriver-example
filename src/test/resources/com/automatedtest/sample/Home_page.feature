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
  Scenario Outline: Check title (uid:a6af9d86-62e9-4b6c-9daa-0e3e2fbb6aba)
    Given A user navigates to HomePage "<countryCode>"
    Then page title is "<title>"

    Examples:
      | countryCode | title | hiptest-uid |
      | fr | Google | uid:8800f383-21c1-4daa-a75d-c80cd0ca9b49 |
