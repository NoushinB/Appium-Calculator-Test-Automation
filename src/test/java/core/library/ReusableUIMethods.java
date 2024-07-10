package core.library;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ReusableUIMethods {
    protected final AppiumDriver driver;

    public ReusableUIMethods(AppiumDriver driver){
        this.driver=driver;
    }

    public boolean isElementDisplayed(WebElement Element) {
        try {
            WebDriverWait wait = new WebDriverWait(driver, Constants.DEFAULT_TIMEOUT);
            wait.until(ExpectedConditions.visibilityOf(Element));
            return true;
        } catch (TimeoutException e) {
            return false;
        }
    }
}
