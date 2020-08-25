@home_screen
Feature: Tests for Home screen functionality
  @default
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"


    Scenario: Show All button should be enabled at launch
      Given I land on home screen
      Then Show All button should be disabled
      When I type "1" on the application keyboard
      Then Show All button should be enabled


  @conversions
  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" on the application keyboard
    Then I should see result as "<result>"
    Examples:
      | target   |result    |
      | 1        | 30.48    |
      | 2        | 60.96    |
      | 3        | 91.44    |
      | 9        | 274.32   |
      |1011      | 30 815.28 |

  Scenario:
    User able to add current conversion to favourites list
    Given I land on home screen
    Then I press on Add to Favorites icon
    When I press on menu icon
    Then I press on Favorite conversions
    Then I verify "temp" to Favourite conversions list

  @searchConversion
  Scenario:
      User able to search by using existing conversion type
      Given I land on home screen
      Then I press on search icon
      Then I type "Temperature" in search field
      And I press return button on soft keyboard
      Then I verify "Temperature" as a current unit converter
      Then Left unit picker value should be "Celsius"
      And Right unit picker value should be "Fahrenheit"
  @wip
Scenario Outline:
  User able to select values from unit pickers
  Given I land on home screen
  Then I select "<unit_type>" from left unit picker
  When I type "<amount>" on the application keyboard
  Then I should see result as "<result>"
  Examples:
    |unit_type  | amount | result |
    | Inch      |   1    | 2.54   |
    | Link      |   1    |20.1168 |
    |[Hist.rus.] Mezhevaya verst | 1 | 213 360 |


  #Scenario: User able to convert values
    #Given I land on home screen
   # When I press on menu icon
    #Then I select "volume" from left unit picker
   # Then I select "Cup" from right unit picker
   # When I type "1" on application keyboard
    #Then I should see result as "15.1416"

  Scenario: User able to switch values
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"
    When I press on switch units button
    Then Left unit picker value should be "Centimeter"
    And Right unit picker value should be "Foot"


