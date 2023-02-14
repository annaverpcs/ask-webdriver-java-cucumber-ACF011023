@quote
Feature: Quote Tests scenario
  Background: 
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    Then I resize window to 1400 and 285
    @quote1
    Scenario: Verify responsiveness UI design of Quote Application
      When I resize window to 1400 and 285
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      Then element with xpath "//b[@id='currentDate']" should be displayed
      Then element with xpath "//b[@id='currentDate']" should contain text "2023"
      Then element with xpath "//b[@id='currentTime']" should be displayed
      Then element with xpath "//b[@id='currentTime']" should contain text " Pacific Standard Time"
     #Responsiveness for tablet
      When I resize window to 990 and 285
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      #Responsivness for Phone
      When I resize window to 375 and 667
      Then element with xpath "//b[@id='location']" should not be displayed

      @quote2
      Scenario:Verify username fields with all possible scenario
        Then element with xpath "//input[@name='username']" should be displayed
        Then I type "A" into element with xpath "//input[@name='username']"
        Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
        Then element with xpath "//label[@id='username-error']" should be present
        Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
        Then I clear element with xpath "//input[@name='username']"
        Then I type "AB" into element with xpath "//input[@name='username']"
        Then element with xpath "//label[@id='username-error']" should not be displayed

        @quote3
        Scenario: Verify email address fields accept only valid email address
          Then element with xpath "//input[@name='email']" should be displayed
          Then I type "abcd" into element with xpath "//input[@name='email']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then element with xpath "//label[@id='email-error']" should be present
          Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."
          Then I clear element with xpath "//input[@name='email']"
          Then I type "abcd@gmail.com" into element with xpath "//input[@name='email']"
          Then element with xpath "//label[@id='email-error']" should not be displayed
           #verify email doesn't accept number only
          Then I type "123456" into element with xpath "//input[@name='email']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then element with xpath "//label[@id='email-error']" should be present

        @quote4
        Scenario: Verify password fields
          #Verify valid password
          Then I wait for element with xpath "//input[@id='password']" to be present
          Then I type "12345" into element with xpath "//input[@id='password']"
          Then I wait for element with xpath "//input[@id='confirmPassword']" to be present
          Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then I clear element with xpath "//input[@id='confirmPassword']"
          Then I clear element with xpath "//input[@id='password']"
          #Then element with xpath "//label[@id='confirmPassword-error']" should not be displayed
           #If you don't type anything in password field, Password field should be disable
          Then I wait for element with xpath "//input[@id='password']" to be present
          Then I click on element using JavaScript with xpath "//input[@id='password']"
          Then I click on element with xpath "//input[@id='confirmPassword']"
          Then element with xpath "//input[@id='confirmPassword']" should be disabled
          #Password field show error message if you type lower then boundary value
          Then I wait for element with xpath "//input[@id='password']" to be present
          Then I type "123" into element with xpath "//input[@id='password']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
          #Verify the result with wrong password input in confirm password text fields
          Then I wait for element with xpath "//input[@id='password']" to be present
          Then I type "12345" into element with xpath "//input[@id='password']"
          Then I wait for element with xpath "//input[@id='confirmPassword']" to be present
          Then I type "12346" into element with xpath "//input[@id='confirmPassword']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then element with xpath "//label[@id='confirmPassword-error']" should contain text "Passwords do not match!"
        @quote5
        Scenario: Verify name input field
          #Validate “Name” field behavior Modal dialog: verify that upon clicking inside of Name field popup dialog appears.
          Then I wait for element with xpath "//input[@id='name']" to be present
          Then I click on element with xpath "//input[@id='name']"
          Then I wait for element with xpath "//div[@id='nameDialog']" to be present
          #Name concatenation: verify that after putting First Name, Middle Name, Last Name, it concatenates it correctly and puts the value in the Name field
          Then I click on element with xpath "//input[@id='firstName']"
          Then I type "First" into element with xpath "//input[@id='firstName']"
          Then I type "Middle" into element with xpath "//input[@id='middleName']"
          Then I type "Last" into element with xpath "//input[@id='lastName']"
          Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
          Then I wait for element with xpath "//input[@id='name']" to be present
          Then element with xpath "//input[@id='name']" should have attribute "value" as "First Middle Last"

        @quote6
        Scenario: Verify privacy policy is required
          #Validate that Accepting Privacy Policy is required to submit the form, then check the field
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
          Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
          Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed

        @quote7
          Scenario: Verify optional fields
          #type Phone number
          Then I wait for element with xpath "//input[@name='phone']" to be present
          Then I type "1234567890" into element with xpath "//input[@name='phone']"
          #country of origin
          Then I wait for element with xpath "//select[@name='countryOfOrigin']" to be present
          Then I click on element using JavaScript with xpath "//select[@name='countryOfOrigin']"
          Then I click on element using JavaScript with xpath "//option[contains(text(),'United States of America')]"
          #Gender
          Then I wait for element with xpath "//label[contains(text(),'Gender')]" to be present
          Then I click on element using JavaScript with xpath "//span[contains(text(),'Male')]"
          #Alloud to contact
          Then I wait for element with xpath "//label[contains(text(),'Allowed to Contact?')]" to be present
          Then I click on element using JavaScript with xpath "//span[contains(text(),'I allow to contact me via email or phone')]"
          #Address
          Then I wait for element with xpath "//textarea[@id='address']" to be present
          Then I type "Abc Avenue, Santa Rosa, Ca" into element with xpath "//textarea[@id='address']"
          #car make
          Then I wait for element with xpath "//label[contains(text(),'Car Make')]" to be present
          Then I click on element using JavaScript with xpath "//option[contains(text(),'BMW')]"
          #Third party agreement
          Then I wait for element with xpath "//button[@id='thirdPartyButton']" to be present
          Then I click on element using JavaScript with xpath "//button[@id='thirdPartyButton']"
          Then I accept alert
          Then element with xpath "//span[@id='thirdPartyResponseMessage']" should be displayed

        @quote
        Scenario:Submit the form and verify the data.
        #Validate that after form submission entered fields values are present on the page.
        # Validate that password is not displayed on the page
          Then element with xpath "//input[@name='username']" should be displayed
          Then I type "Username" into element with xpath "//input[@name='username']"
          Then element with xpath "//input[@name='email']" should be displayed
          Then I type "abcd23@gmail.com" into element with xpath "//input[@name='email']"
          Then I wait for element with xpath "//input[@id='password']" to be present
          Then I type "12345" into element with xpath "//input[@id='password']"
          Then I wait for element with xpath "//input[@id='confirmPassword']" to be present
          Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
          Then I wait for element with xpath "//input[@id='name']" to be present
          Then I click on element with xpath "//input[@id='name']"
          Then I wait for element with xpath "//div[@id='nameDialog']" to be present
          Then I click on element with xpath "//input[@id='firstName']"
          Then I type "First" into element with xpath "//input[@id='firstName']"
          Then I type "Middle" into element with xpath "//input[@id='middleName']"
          Then I type "Last" into element with xpath "//input[@id='lastName']"
          Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
          Then I wait for element with xpath "//input[@name='phone']" to be present
          Then I type "1234567890" into element with xpath "//input[@name='phone']"
          Then I wait for element with xpath "//select[@name='countryOfOrigin']" to be present
          Then I click on element using JavaScript with xpath "//select[@name='countryOfOrigin']"
          Then I click on element using JavaScript with xpath "//option[contains(text(),'United States of America')]"
          Then I wait for element with xpath "//label[contains(text(),'Gender')]" to be present
          Then I click on element using JavaScript with xpath "//span[contains(text(),'Male')]"
          Then I wait for element with xpath "//label[contains(text(),'Allowed to Contact?')]" to be present
          Then I click on element using JavaScript with xpath "//span[contains(text(),'I allow to contact me via email or phone')]"
          Then I wait for element with xpath "//textarea[@id='address']" to be present
          Then I type "Abc Avenue, Santa Rosa, Ca" into element with xpath "//textarea[@id='address']"
          Then I wait for element with xpath "//label[contains(text(),'Car Make')]" to be present
          Then I click on element using JavaScript with xpath "//option[contains(text(),'BMW')]"
          Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
          Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
          #Verify application is submitted
          Then element with xpath "//body/div[@id='quotePageResult']/fieldset[1]/section[1]/div[1]" should be displayed
          Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be present
          Then element with xpath "//button[@id='return']" should be present
          #Verify password is masked
          Then element with xpath "//b[@name='password']" should have text as "[entered]"














        
        


        


      