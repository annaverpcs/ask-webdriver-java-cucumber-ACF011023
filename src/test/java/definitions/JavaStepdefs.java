package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class JavaStepdefs {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }


    @Given("I print {string}")
    public void iPrintAnd(String sString){
        System.out.println(sString);
    }

    @Then("I print {string} and {string}")
    public void iPrintAnd(String sString1, String sString2) {
        //Good Day
        String sString = "Hello Team,";
        String sSpace = " " ;
        String sExMark = "!" ;

        System.out.println();
        System.out.println(sString1+ " "+sString2);
        System.out.println(sString1+sSpace+sString2+sExMark);
        System.out.println(sString1.toUpperCase()+" "+ sString2.toLowerCase()+sExMark);
        System.out.println(sString+sSpace+sString1+sSpace+sString2+sExMark);

    }

    @Given("I calculate result with {int} and {int}")
    public void iCalculateResultWithAnd(int iNum, int iNum1) {
        int iSum = iNum+iNum1;
        int iDif = iNum-iNum1;
        int iMulti = iNum*iNum1;
        float iDiv = iNum/iNum1;
        System.out.println(iSum);
        System.out.println(iNum + " + " +iNum1 +" = " +iSum);
        System.out.println("The different btw " + iNum + " and " + iNum1 + " is " + " = " + iSum);
        System.out.println("Division of these numbers is" + iDiv);
    }

    @Then("I identify the number {int} is odd or even")
    public void iIdentifyTheNumberIsOddOrEven(int iNum3) {
        if (iNum3%2 ==0){
            System.out.println(iNum3  + " is even number");
        }else {
            System.out.println(iNum3  + " is odd number");
        }
    }

    @Given("I want to all days of thr week")
    public void iWantToAllDaysOfThrWeek() {
        String [] aDaysOfWeek = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
        int [] aDateOfDays = {12,13,14,15,16,17,18};
        System.out.println(aDaysOfWeek.length);
        System.out.println(aDaysOfWeek.length);
        System.out.println(aDaysOfWeek[3]);
        for (String element:aDaysOfWeek){
            System.out.println(element);
        }
        for (int i =0; i < aDaysOfWeek.length; i++){
            System.out.println(aDaysOfWeek[i] + " " + aDateOfDays[i]);
        }
    }
}
