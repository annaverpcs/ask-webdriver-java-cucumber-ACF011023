package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


public class JavaStepDefs {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello");
    }

    @Given("I print {string}")
    public void iPrint(String sString) {
        System.out.println(sString);
    }

    @Then("I print {string} and {string}")
    public void iPrintAnd(String sString1, String sString2) {
        // Good Day!
        String sSpace = " ";
        String sExMark ="!";
        System.out.println(sString1+sString2);
        System.out.println(sString1+sSpace+sString2+sExMark);
        System.out.println(sString1.toUpperCase()+sSpace+sString2.toLowerCase()+sExMark);
        System.out.println(sString1+ "    "+sString2+"!");

    }

    @Given("I calculate results with {int} and {int}")
    public void iCalculateResultsWithAnd(int iNum1, int iNum2) {
        int iSum = iNum1+iNum2;
        int iDif = iNum1-iNum2;
        int iPro = iNum1*iNum2;
        float iDiv = (float)iNum1/(float)iNum2;
        System.out.println(iNum1 + "+" + iNum2 + "="+iSum);
        System.out.println("the difference from "+ iNum1 +" and "+ iNum2 +" is "+ iDif);
        System.out.println(iPro);
        System.out.println(iNum1 + "/" + iNum2 + "="+ iDiv);
    }

    @Then("I identify the number {int} is odd or even")
    public void iIdentifyTheNumberIsOddOrEven(int iNum3) {
        if (iNum3%2 == 0){
            System.out.println(iNum3 + " is even number");
        }
        else {
            System.out.println(iNum3 + " is odd number");
        }
    }

    @Given("I want to print all days of the week")
    public void iWantToPrintAllDaysOfTheWeek() {
        String[] aDaysOfWeek ={"Sun","Mon","Tue","Wed","Thur","Fri","Sat"};
        int[] aDateOfWeek = {12,13,14,15,16,17,18};
        System.out.println(aDaysOfWeek[3]);
        for (String element:aDaysOfWeek){
            System.out.println(element);
        }
       for (int i=0;i<aDateOfWeek.length; i++) {
           System.out.println(aDaysOfWeek[i] + " "+ aDateOfWeek[i]);
       }



    }
}
