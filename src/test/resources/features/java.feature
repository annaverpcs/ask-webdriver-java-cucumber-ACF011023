#java coding practice
  #MilanTiwari
  #ACF- 926
@java
Feature: Java coding practice

  @java1
  Scenario: Hello world
    Given I print Hello World

  @java2
  Scenario: Example with strings
    Given I print "Hello Team!"
    Then I print "Good" and "Day"

  @java3
  Scenario Outline: Example with numbers
    Given I calculate result with <iNum> and <iNum1>
    Then I identify the number <iNum3> is odd or even
    Examples:
      | iNum | iNum1 | iNum3 |
      | 3    | 5     | 9     |
      | 4    | 7     | 6     |
      | 3    | 2     | 1     |
    @java4
    Scenario: Examples with array
      Given I want to all days of thr week











