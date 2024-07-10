package steps.android;

import core.pages.CalculatorPage;
import core.pages.NavigationPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.assertTrue;

public class NavigationStepDefinitions {

    private final NavigationPage navigationPage;
    private final CalculatorPage calculatorPage;

    public NavigationStepDefinitions() {
        navigationPage = new NavigationPage();
        calculatorPage = new CalculatorPage();
    }

    @Given("User is on the navigation page")
    public void userIsOnTheNavigationPage() {
        assertTrue(navigationPage.isNavigationPageDisplayed());
    }

    @When("User navigate to the calculator page")
    public void userNavigateToTheCalculatorPage() {
        navigationPage.clickCalculatorButton();
    }

    @Then("User should see the calculator page")
    public void userShouldSeeTheCalculatorPage() {
        assertTrue(calculatorPage.isCalculatorPageDisplayed());
    }
}
