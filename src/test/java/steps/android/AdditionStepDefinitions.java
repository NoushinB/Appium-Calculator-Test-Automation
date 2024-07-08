package steps.android;

import core.pages.CalculatorPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.When;

public class AdditionStepDefinitions extends CommonStepDefinitions {

    private CalculatorPage calculatorPage;

    public AdditionStepDefinitions(CalculatorPage calculatorPage) {
        super(calculatorPage);
        this.calculatorPage = calculatorPage;
    }

    @When("User enter {string}")
    public void userEnter(String number) {
        // TODO: should be 1
    }

    @And("User press {string}")
    public void userPress(String operator) {
        calculatorPage.clickOnOperatorButton(operator);
    }

    @And("User presses {string}")
    public void userPresses(String operator) {

    }
}
