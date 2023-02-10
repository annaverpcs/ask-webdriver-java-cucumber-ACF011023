@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Search Engine for  https://ekoru.org
    Given I open url "https://ekoru.org"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Cucumber" into element with xpath "//input[@id='fld_q']"
    Then I click on element with xpath " //div[@id='btn_search']"
    Then I wait for 3 sec
    Then element with xpath "//div[@id='serp_organic']/div[1]/div[@class='serp-result-web-text']" should contain text "Cucumber"
  #//div[@class='serp-result-web-text']

  @predefined3
  Scenario: Search Engine for https://www.wiki.com/
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//input[@name='q']"
    Then I click on element with xpath "//input[@name='btnG']"
    Then I wait for 2 sec
    Then I should see page title as "Form is not secure"
    Then I click on element with xpath "//button[@id='proceed-button']"
    Then I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then element with xpath "//*[contains(text(),'Cucumber')]" should contain text "Cucumber"





