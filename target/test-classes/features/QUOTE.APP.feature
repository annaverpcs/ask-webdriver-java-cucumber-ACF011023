# Test Automation Exercise - Cucumber
# https://jira.portnov.com/browse/ACF-909
# Author/ Assignee: Marina Maksimova
# Reporter: Anna Verkhovskaya


@quote
Feature: Quote testing

  @quote1
  Scenario: Validate responsive UI behaviour
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
      # Desktop mode
    Then I resize window to 1920 and 1080
    Then element with xpath "//*[@class='col-xs-12 col-sm-12 col-md-4 col-lg-4']" should be present
      # Verify that App Section has Location/Date/Time
    Then element with xpath "//b[@id='location']" should have text as "Los Altos, CA 94022"
    Then element with xpath "//b[@id='currentDate']" should contain text "02/12/2023"
    Then element with xpath "//b[@id='currentTime']" should be displayed
      # iPhone mode
    Then I resize window to 400 and 822
    Then element with xpath "//b[@id='location']" should not be displayed

  @quote2
  Scenario: Validate "Username" field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I resize window to 1920 and 1080
    Then element with xpath "//input[@name='username']" should be present
    When I type "M" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
    Then I clear element with xpath "//input[@name='username']"
    And I type "Ma" into element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @quote3
  Scenario: Validate "Email" field behaviour - NEGATIVE scenario
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@name='email']" should be displayed
    When I type "marina@n." into element with xpath "//input[@name='email']"
    And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
    Then I clear element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should have text as "This field is required."


  @quote4
  Scenario: Validate "Email" field behaviour - POSITIVE scenario
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@name='email']" should be displayed
    When I type "marusja13536@freeallapp.com" into element with xpath "//input[@name='email']"
    And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should not be present

  @quote5
  Scenario: Validate "Password" - NEGATIVE scenario
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='password']" should be displayed
    When I type "q" into element with xpath "//input[@id='password']"
    And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should have text as "Please enter at least 5 characters."
    Then I clear element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='password-error']" should have text as "This field is required."

  @quote6
  Scenario: Validate "Password" - POSITIVE scenario
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='password']" should be displayed
    When I type "qwert" into element with xpath "//input[@id='password']"
    And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should not be present
    Then I clear element with xpath "//input[@id='password']"

  @quote7
  Scenario: Validate "Confirm Password" is disabled if "Password" field is empty
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='password']" should be displayed
    And element with xpath "//input[@id='confirmPassword']" should be displayed
    When I type "qwert" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    When I clear element with xpath "//input[@id='password']"
      # Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      # And element with xpath "//label[@id='password-error']" should have text as "This field is required."
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    Then I type "qwert" into element with xpath "//input[@id='password']"
    And I type "qwert" into element with xpath "//input[@id='confirmPassword']"

  @quote8
  Scenario: Verification of popup dialog appearance after clicking inside "Name" field
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be displayed
    Then I click on element using JavaScript with xpath "//input[@id='name']"
    And element with xpath "//*[@id='ui-datepicker-div']" should not be displayed

  @quote9
  Scenario:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be displayed
    Then I click on element using JavaScript with xpath "//input[@id='name']"
    And element with xpath "//input[@id='firstName']" should be displayed
    Then I type "Abba" into element with xpath "//input[@id='firstName']"
    Then I click on element with xpath "//input[@id='middleName']"
    Then I type "The" into element with xpath "//input[@id='middleName']"
    Then I click on element with xpath "//input[@id='lastName']"
    Then I type "Best" into element with xpath "//input[@id='lastName']"
    When I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@id='name']" to be present
    And element with xpath "//input[@id='name']" should have attribute "value" as "Abba The Best"

  @quote10
    # Test scenario with data driven case
  Scenario Outline: Name concatenation
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then element with xpath "//input[@id='name']" should be displayed
    Then I click on element using JavaScript with xpath "//input[@id='name']"
    And element with xpath "//input[@id='firstName']" should be displayed
    Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
    Then I click on element with xpath "//input[@id='middleName']"
    Then I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
    Then I click on element with xpath "//input[@id='lastName']"
    Then I type "<LastName>" into element with xpath "//input[@id='lastName']"
    When I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@id='name']" to be present
    And element with xpath "//input[@id='name']" should have attribute "value" as "<FullName>"
    Examples:
      | FirstName | MiddleName | LastName | FullName        |
      | Abba      | The        | Best     | Abba The Best   |
      | Mari      | Aleks      | Maks     | Mari Aleks Maks |

  @quote11
  Scenario: Validation of Acceptance Privacy Policy
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    And element with xpath "//label[@class='required checkbox_radio']" should be displayed
    When I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@class='required checkbox_radio']" should have text as "- Must check! I have read and accept Privacy Policy."
    When I click on element with xpath "//button[@id='formRefresh']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@class='required checkbox_radio']" should not have text as "- Must check! I have read and accept Privacy Policy."

  @quote12
  Scenario: Validation of the form after Submission
      # filling up the form. Before Submission
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    And element with xpath "//*[@id='quoteForm']" should be present
    Then I type "Ma" into element with xpath "//input[@name='username']"
    Then I type "marusja13536@freeallapp.com" into element with xpath "//input[@name='email']"
    Then I type "qwert" into element with xpath "//input[@id='password']"
    And I type "qwert" into element with xpath "//input[@id='confirmPassword']"
      # name input data
    Then I click on element with xpath "//input[@id='name']"
    And element with xpath "//input[@id='firstName']" should be displayed
    Then I type "Abba" into element with xpath "//input[@id='firstName']"
    Then I click on element with xpath "//input[@id='middleName']"
    Then I type "The" into element with xpath "//input[@id='middleName']"
    Then I click on element with xpath "//input[@id='lastName']"
    Then I type "Best" into element with xpath "//input[@id='lastName']"
    And I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Abba The Best"
      # accepting Privacy Policy
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
      # waiting of submitted app loading
    Then I wait for 3 sec
      # data after Submission
    And element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed
    And element with xpath "//b[@name='username']" should have text as "Ma"
    And element with xpath "//b[@name='name']" should have text as "Abba The Best"
    And element with xpath "//b[@name='email'][contains(text(),'marusja13536@freeallapp.com')]" should be present
    And element with xpath "//b[@name='location'][contains(text(),'Los Altos, CA 94022')]" should be present
      # validation that password is NOT displayed
    And element with xpath "//b[@name='password']" should have text as "[entered]"

