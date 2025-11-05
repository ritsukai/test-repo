Feature: PR Creation after Agent Completion

  Scenario: Verify PR is created by worker after agent completes
    Given an agent has completed its task
    When the worker processes the agent's completion
    Then a Pull Request should be created
    And the Pull Request should contain the agent's changes
