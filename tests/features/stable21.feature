Feature: CLI updater - stable21 base

  Scenario: Update is available - 21.0.0 RC 1 to 21.0.0
    Given the current installed version is 21.0.0RC1
    And there is an update to version 21.0.0 available
    When the CLI updater is run successfully
    And the output should contain "Update successful"
    Then the installed version should be 21.0
    And maintenance mode should be off
    And upgrade is not required
