@home_screen
Feature: Tests for Home screen functionality
  @default
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

    Scenario: Show All button should be enabled at launch
      Given I land on home screen
      Then Show All button should be enabled
      When I press on Clear button
      Then Show All button should be disabled
      Then Show All button should be undefined


  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
    Examples:
      | target |result |
      | 1      | 12    |
      | 2      | 24    |
      | 3      | 12    |
      | 9      | 108    |

  Scenario:
    User able to add current conversion to favourites list
    Given I land on home screen
    Then I press on Add to Favorites icon
    When I press on menu icon
    Then I press on Favorite conversions
    Then I verify "Length" to Favourite conversions list