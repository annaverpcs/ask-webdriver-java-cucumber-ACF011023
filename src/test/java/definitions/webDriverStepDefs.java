package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class webDriverStepDefs {
    @Given("I navigate to {string}")
    public void iNavigateTo(String sURL) {
      getDriver().get("http://www.google.com");

      switch (sURL) {
          case "google" :
              getDriver().get("http://www.google.com");
              break;
          case "Portnov" :
              getDriver().get("http://www.portnov.com");
              break;
          case "quote" :
              getDriver().get("https://skryabin.com/market/quote.html");
              break;
          case "amazon" :
              getDriver().get("https://www.amazon.com");
              break;
          default:
              System.out.println("No url is found");
      }
    }

    @Then("I get page information")
    public void iGetPageInformation() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandles());
    }

    @Then("I modify window size")
    public void iModifyWindowSize() {
        getDriver().manage().window().maximize();

    }

    @When("I type {string} to email field")
    public void iTypeToEmailField(String sString) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sString);
    }

    @And("click Submit button")
    public void clickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();

    }

    @Then("Error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sErrorMessage) {
       String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println("Expected error message - " + sErrorMessage);
        System.out.println("Actual Error message - " + sActualMessage);
        assertThat(sActualMessage.equals(sErrorMessage)).isTrue();
    }

    @Then("I clear email field")
    public void iClearEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();

    }

    @Then("no error message should be displayed for email field")
    public void noErrorMessageShouldBeDisplayedForEmailField() {
       assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isFalse();
    }

    @Then("take a break")
    public void takeABreak() throws InterruptedException {
        Thread.sleep(3000);
    }
}

