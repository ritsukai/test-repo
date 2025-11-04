Feature: Create Pull Request after Agent Completes

  Scenario: Agent successfully creates a pull request after completing a task
    Given a new task is assigned to the agent
    When the agent completes the task
    Then a pull request should be created with the agent's changes
    And the pull request should be in a "ready for review" state
    And the pull request description should summarize the agent's work
