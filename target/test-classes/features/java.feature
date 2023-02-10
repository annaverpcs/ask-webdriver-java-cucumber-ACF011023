  #Java practice
  #ACF-924
  #Author Anna Verkhovskaya
    @java
    Feature: Java coding practice

      @java1
      Scenario: Hello World
        Given I print Hello World

      @java2
      Scenario: Examples with strings
        Given I print "Hello Team!"
        Then I print "Good" and "Day"

      @java3
      Scenario Outline: Examples with numbers
        Given I calculate results with <iNum1> and <iNum2>
        Then I identify the number <iNum3> is odd or even
        Examples:
          | iNum1 | iNum2 | iNum3 |
          | 3     | 2     | 5     |
          | 3     | 5     | 6     |
          | 0     | 10    | 10    |

      @java4
      Scenario: Example with arrays
        Given I want to print all days of the week