package steps.android;

import core.pages.CalculatorPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;

public class AdditionStepDefinitions {

    private final CalculatorPage calculatorPage;

    public AdditionStepDefinitions() {
        calculatorPage = new CalculatorPage();
    }

    @When("User enter {string}")
    public void userEnter(String number) {
        calculatorPage.clickOnNumber(number);
    }

    @And("User press {string}")
    public void userPress(String operator) {
        calculatorPage.clickOnOperatorButton(operator);
    }

}
