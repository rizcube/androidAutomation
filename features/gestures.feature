@gestures
Feature: User able to use gestures
@wip
  Scenario: User able to swipe to open Left side menu
    Given I land on home screen
    Then I verify "Length" as a current unit converter
    When I swipe from left to right to open left side menu
    Then I should see left side menu
    Then I swipe from right to left to close left side menu
    Then I land on home screen
@wip
  Scenario: User able to swipe to open Calculator
    Given I land on home screen
    Then I swipe from right to left to open calculator
    Then I verify "Calculator" as a current unit converter
    When I swipe from left to right to close calculator
    Then I land on home screen

