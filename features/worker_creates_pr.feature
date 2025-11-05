Feature: Worker creates Pull Request after agent completes

  Scenario: Agent completes a task and worker creates a PR
    Given an agent has completed a task
    When the worker detects the agent's completion
    Then a Pull Request should be created
    And the Pull Request should contain the agent's changes
