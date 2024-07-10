package core.pages;

import core.pages.common.BasePage;
import io.appium.java_client.pagefactory.AndroidFindBy;
import org.openqa.selenium.WebElement;

public class NavigationPage extends BasePage {
    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"basic_calculator\")")
    private WebElement basicCalculatorBtn;
    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"calculator\")")
    private WebElement calculatorBtn;
    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"counter\")")
    private WebElement counterBtn;
    @AndroidFindBy(uiAutomator = "new UiSelector().resourceId(\"crypto_list\")")
    private WebElement cryptoListBtn;

    public boolean isNavigationPageDisplayed() {
        return reusableUIMethods.isElementDisplayed(calculatorBtn);
    }

    public void clickCalculatorButton() {
        calculatorBtn.click();
    }
}
