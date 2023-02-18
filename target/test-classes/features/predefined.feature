@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "cucumber" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@name='btnK']"
    #Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='rcnt']" to be present
    Then I should see page title contains "- Google Search"
    Then element with xpath "//div[@id='rcnt']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then I type "Pokhara" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
      # Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then I should see page title contains "Gibiru - Results"
    Then element with xpath "//div[@id='web-results']" should contain text "Nepal"

  @predefined3
  Scenario: https://duckduckgo.com
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then I wait for element with xpath "//a[@id='logo_homepage_link']" to be present
    Then I type "Cat picture" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@id='links_wrapper']" to be present
    Then I should see page title contains "Cat picture"
    Then element with xpath "//div[@id='links_wrapper']" should be displayed

  @predefined4
  Scenario: https://swisscows.com
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then I wait for element with xpath "//div[@id='__next']" to be present
    Then I type "Test Automation" into element with xpath "//input[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@id='__next']" to be present
    Then I wait for 2 sec
    Then I should see page title contains "test automation"
    Then element with xpath "//div[@id='__next']" should contain text "Test Automation"

  @predefined5
  Scenario: https://www.searchencrypt.com
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title contains "Search Encrypt"
    Then I type "Dog Pictures" into element with xpath "//Input[@name='q']"
    Then I click on element using JavaScript with xpath "//body/div[@id='PXLINK__F']/div[@id='PGLINK']/div[@id='app']/section[1]/form[1]/button[1]"
    Then I wait for element with xpath "//body/div[@id='PXLINK__F']/div[@id='PGLINK']/div[@id='app']/section[1]/section[2]/section[1]" to be present
    Then element with xpath "//body/div[@id='PXLINK__F']/div[@id='PGLINK']/div[@id='app']/section[1]/section[2]/section[1]" should contain text "Dog Pictures"

  @predefined6
  Scenario: https://www.startpage.com
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage "
    Then I type "California" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='search-btn']"
    Then I wait for element with xpath "//div[@id='main']" to be present
    Then element with xpath "//div[@id='main']" should contain text "California"
    Then I should see page title contains "Startpage Search Results"

  @predefined7
  Scenario: https://www.yandex.com
    Given I open url "https://www.yandex.com"
    Then I should see page title as "Yandex"
    Then I type "Biggest country in the world" into element with xpath "//input[@id='text']"

  @predefined8
  Scenario: https://www.ecosia.org
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then I type "Plant Tree" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@data-test-id='search-form-submit']"
    Then I wait for element with xpath "//section[@class='mainline web__mainline']" to be present
    Then I should see page title contains "Plant Tree - Ecosia - Web"
    Then element with xpath "//section[@class='mainline web__mainline']" should contain text "Plant Tree"

  @predefined9
  Scenario: https://www.wiki.com/
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then I type "Which is the Capital city of Nepal? " into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@name='btnG']"
    Then I wait for 2 sec
    Then I should see page title as "Form is not secure"
    Then I click on element with xpath "//button[@id='proceed-button']"
    Then I wait for 2 sec
    Then I should see page title as "Wiki.com"
    Then I wait for 2 sec
              #Then I wait for element with xpath "//div[@id='inner-sbox']" to be present
              #Then element with xpath "//div[@id='inner-sbox']" should contain text "Kathmandu"

  @predefined10
  Scenario: https://www.givewater.com/
    Given I open url "https://www.givewater.com/"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@class='pum-close popmake-close']"
    Then I should see page title contains "giveWater Search Engine"
    Then I type "water" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@class='btn-search']"
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "water"

  @predefined11
  Scenario: https://ekoru.org/
    Given I open url "https://ekoru.org/"
    Then I should see page title contains "Ekoru - every search cleans our oceans"
    Then I wait for element with xpath "//input[@id='fld_q']" to be present
    Then I type "Big ocean in the world" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for 3 sec
    Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
    Then element with xpath "//div[@class='serp-wrapper']" should contain text "Pacific Ocean"


              

            




            













        