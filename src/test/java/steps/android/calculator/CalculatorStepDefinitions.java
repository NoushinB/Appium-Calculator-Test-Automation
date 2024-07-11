package steps.android.calculator;

import core.pages.CalculatorPage;
import core.pages.NavigationPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class CalculatorStepDefinitions {
    private final CalculatorPage calculatorPage;
    private final NavigationPage navigationPage;

    public CalculatorStepDefinitions() {
        navigationPage = new NavigationPage();
        calculatorPage = new CalculatorPage();
    }

    @Given("User is on the calculator page")
    public void userIsOnTheCalculatorPage() {
        navigationPage.clickCalculatorButton();
        assertTrue(calculatorPage.isCalculatorPageDisplayed());
    }

    @And("calculator is cleared")
    public void calculatorIsCleared() {
        calculatorPage.clickOnOperatorButton("AC");
        String actual = calculatorPage.getTextViewResult();
        assertEquals("0", actual);
    }

    @When("User enter {string}")
    public void userEnter(String number) {
        calculatorPage.clickOnNumber(number);
    }

    @And("User press {string}")
    public void userPress(String operator) {
        calculatorPage.clickOnOperatorButton(operator);
    }

    @Then("the display shows {string}")
    public void theDisplayShows(String expectedResult) {
        String actual = calculatorPage.getTextViewResult();
        assertEquals(expectedResult, actual);
    }
}
