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
       //getDriver().get("http://www.google.com");
       switch (sURL){
           case "google" :
               getDriver().get("http://www.google.com");
               break;
           case "portnov" :
               getDriver().get("https://www.portnov.com/");
               break;
           case "quote" :
               getDriver().get("https://skryabin.com/market/quote.html");
               break;
           case "ask" :
               getDriver().get("http://ask-internship.portnov.com/#/login");
               break;
           default:
               System.out.println("No URL found");

       }

    }

    @Then("I get page information")
    public void iGetPageInformation() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }

    @Then("I modify window to max size")
    public void iModifyWindowToMaxSize() {
        getDriver().manage().window().maximize();
    }

    @When("I type {string} to email field")
    public void iTypeToEmailField(String sString) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sString);
    }

    @And("I click Submit button")
    public void iClickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sErrorMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println("Expected Error Message - " + sErrorMessage);
        System.out.println("Actual Error Message - "+ sActualMessage);
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
