Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: Sequence is initialized to a non-fibonacci number
    Given a fibonacci sequence initialized to 7
    Then it should throw an exception

  Scenario: Sequence is initialized to a decimal number
    Given a fibonacci sequence that is initialized to 6.5
    Then it should throw an exception
    
  Scenario: Sequence is initialized and skipped by '1' multiple times
    Given a fibonacci sequence initialized to 3
    When the next number is called
    And the next number is called
    And the next number is called
    Then the state should be "the current number is 21"

  Scenario: Sequence is initialized to a negative number
    Given a fibonacci sequence initialized to -2
    Then it should throw an exception

  Scenario: Sequence re-initializes to a determined number after skipping
    Given a fibonacci sequence initialized to 5
    When the sequence is skipped 3 times
    And the fibonacci sequence is then initialized to 3
    Then the state should be "the current number is 3"

  