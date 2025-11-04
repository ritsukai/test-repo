Feature: Create PR after agent completes
  As a user
  I want the worker to create a PR
  After the agent completes its task

  Scenario: Agent completes task and worker creates PR
    Given an agent has completed its task
    When the worker detects the agent completion
    Then a pull request should be created