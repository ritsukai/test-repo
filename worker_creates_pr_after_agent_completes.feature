Feature: Worker creates PR after agent completes
  As a system
  I want the worker to create a Pull Request
  So that agent's completed work can be reviewed and merged

  Scenario: Agent completes work and worker creates PR
    Given an agent has completed its work
    When the worker processes the completed work
    Then a Pull Request should be created
    And the Pull Request should contain the agent's changes
