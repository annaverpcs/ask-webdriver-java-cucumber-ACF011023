package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.lang.reflect.Array;

public class homeworkStepdefs {
    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int iFoot) {
        int iFeet = 1;
        double Centimeters = iFeet * 30.48;
        System.out.println(iFeet + "feet is equal to  " + Centimeters + " Centimeters");
    }

    @And("I convert {int} US gallon to litters")
    public void iConvertUSGallonToLitters(int iLiter) {
        int iGallon = 1;
        double iLiters = iGallon * 3.78541;
        System.out.println(iGallon + " US gallon to " + iLiters + " liters");
    }

    @Then("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheit(int iFa) {
        int iCelsius = 0;
        double fFahrenheit = (iCelsius * 9/5) + 32;
        System.out.println(iCelsius + "°C is equal to " + fFahrenheit + "°F.");
    }

    @Then("I check number {int} is odd or even")
    public void iCheckNumberIsOddOrEven(int iNum) {
        if(iNum%2 == 0){
            System.out.println(iNum + " is even number");
        } else {
            System.out.println(iNum + " is odd number");
        }
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int iPercent) {
        if (iPercent == 89){
            System.out.println( " You passed with Grade B");
        } else {
            System.out.println("You failed the exam");
        }
    }


    @Given("I find the cost for {int} pounds of {string}")
    public void iFindTheCostForPoundsOf(int iWeight, String sFruit) {
     double iApple = 2.99;
     double price =0.00;
     double iCherries = 2.5;
     double iPlum = 1;
     double iGrapefruit = 1.5;
     double iOrange = 1.99;
    double iCost=0.00;
     switch (sFruit){
         case "GRAPES":
             iCost = (iWeight * iGrapefruit);
             break;

         case "APPLE":
             iCost = (iWeight * iApple);
             break;
     }
     System.out.println(" Cost of grapefruit" + "="+" "+ iCost);

    }

    @Given("I print all elements in the array")
    public void iPrintAllElementsInTheArray() {
        String [] aDaysOfTheWeek = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","saturday"};
        System.out.println(aDaysOfTheWeek[5]+ " is the index 5");

        for (int i = 0; i < aDaysOfTheWeek.length; i++ ) {
            System.out.println(aDaysOfTheWeek[i]);
        }
    }

    @Given("I calculate {int} and {int}")
    public void iCalculateAnd(int iNum1, int iNum2) {
        System.out.println(iNum1*iNum2);
    }
}

