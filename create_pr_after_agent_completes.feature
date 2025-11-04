Feature: Worker creates PR after agent completes

  Scenario: Agent completes a task and a PR is created
    Given an agent has completed a task
    When the worker processes the agent's completion
    Then a pull request should be created
    And the pull request should contain the agent's changes
