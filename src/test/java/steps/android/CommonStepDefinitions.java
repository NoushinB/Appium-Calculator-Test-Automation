package steps.android;

import core.pages.CalculatorPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.junit.Assert.assertTrue;

public class CommonStepDefinitions {
    private final CalculatorPage calculatorPage;

    public CommonStepDefinitions(CalculatorPage calculatorPage) {
        this.calculatorPage = calculatorPage;
    }

    @Given("User is on the calculator page")
    public void userIsOnTheCalculatorPage() {
        // TODO: assert the page is displayed
        assertTrue(true);
    }

    @And("calculator is cleared")
    public void calculatorIsCleared() {
        calculatorPage.clickOnOperatorButton("AC");
    }

    @Then("the display shows {string}")
    public void theDisplayShows(String expectedResult) {
        // TODO: Here we check if the value showed in the result text box is equals to ${expectedResult}
    }
}
