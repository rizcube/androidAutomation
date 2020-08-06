Feature: Tests for Home screen functionality
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left unit picker value should be Foot
    And Right unit picker value should be Centimeter
