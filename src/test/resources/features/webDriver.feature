# Author : Milan Tiwari
  #Exercise with selenium web driver
@webDriver1
Feature: Exercise with selenium webDriver

  Background:
    Given I navigate to "quote"
    Then I modify window size

  Scenario: Load web page and verify page details
    #Given I navigate to "quote"
    # Then I modify window size
    Then I get page information
    Then I wait for 5 sec


  @webDriver2
  Scenario: Email field validation
  #Move first 2 statement to background
    #Given I navigate to "quote"
    #Then I modify window size
    When I type "abc" to email field
    And click Submit button
    Then Error message "Please enter a valid email address." should be displayed
    Then I clear email field
    Then Error message "This field is required." should be displayed
    Then I type "abcd123@gmail.com" to email field
    Then no error message should be displayed for email field
    Then take a break











