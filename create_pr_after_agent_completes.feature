Feature: Create Pull Request after Agent Completes

  Scenario: Agent successfully creates a pull request after completing a task
    Given an agent is assigned a task
    When the agent completes the task
    Then a pull request should be created with the agent's changes
    And the pull request should be ready for review
