# Author: Anna Verkhovskaya
  #Exercises with Selenium WebDriver

@webdriver
  Feature: Exercises with Selenium WebDriver

    Background:
      Given I navigate to "quote"
      Then I modify window to max size

    @webdriver1
    Scenario: Load Web page and Verify page details
      # Given I navigate to "quote"
      #Then I modify window to max size
      Then I get page information
      Then I wait for 5 sec


    @webdriver2
    Scenario: Email field validation
     # Move first 2 statements to Background
     # Given I navigate to "quote"
     # Then I modify window to max size
      When I type "abc" to email field
      And I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      Then I clear email field
      Then error message "This field is required." should be displayed
      Then I type "email@emailserver.com" to email field
      Then no error message should be displayed for email field
      Then take a break






