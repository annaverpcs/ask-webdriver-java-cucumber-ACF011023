#MilanTiwari
# ACF - 926
  #JavaCodingPractice
Feature: Java Homework

  @java1
  Scenario: Converter
    Given I convert 1 foot to centimeters
    And I convert 1 US gallon to litters
    Then I convert 0 Celsius to Fahrenheit

  @java2
  Scenario Outline: I identify number is odd or even
    Then I check number <iNum> is odd or even
    Examples:
      | iNum |
      | 11   |
      | 12   |

  @java3
  Scenario: Check Grades
    Given I got 89 percent on my test

  @java4
  Scenario: Calculating cost of fruit
    Given I find the cost for 4 pounds of "GRAPES"

  @java5
  Scenario: Use a for loop to print element
    Given I print all elements in the array

  @java6
  Scenario: Calculate Numbers
    Given I calculate 5 and 3










