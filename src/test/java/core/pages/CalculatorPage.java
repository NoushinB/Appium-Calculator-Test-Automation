package core.pages;

import core.pages.common.BasePage;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.openqa.selenium.WebElement;

import java.util.Objects;

public class CalculatorPage extends BasePage {

    // TODO: update buttons and their keys
    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"operator_addition\")")
    private WebElement btnAddition;

    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"operator_sub\")")
    private WebElement btnSub;

    public void clickOnOperatorButton(String operator) {
        Objects.requireNonNull(findOperatorButton(operator)).click();
    }

    private WebElement findOperatorButton(String operator) {
        if (Objects.equals(operator, "+")) {
            return btnAddition;
        } else if (Objects.equals(operator, "-")) {
            return btnSub;
        }
        return null;
    }
}
