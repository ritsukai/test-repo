Feature: Worker creates Pull Request after agent completes

  Scenario: Agent completes and worker creates a PR
    Given an agent has completed its task
    When the worker processes the agent's completion
    Then a Pull Request should be created
    And the Pull Request should contain the agent's changes
