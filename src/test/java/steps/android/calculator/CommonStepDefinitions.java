package steps.android.calculator;

import core.pages.CalculatorPage;
import core.pages.NavigationPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class CommonStepDefinitions {
    private final CalculatorPage calculatorPage;
    private final NavigationPage navigationPage;

    public CommonStepDefinitions() {
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

    @Then("the display shows {string}")
    public void theDisplayShows(String expectedResult) {
        String actual = calculatorPage.getTextViewResult();
        assertEquals(expectedResult, actual);
    }
}
