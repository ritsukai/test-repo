Feature: Create Pull Request

  Scenario: Agent completes job and worker creates a pull request
    Given an agent has completed a job
    When the worker detects the completed job
    Then a pull request should be created with the agent's changes
    And the pull request should be ready for review