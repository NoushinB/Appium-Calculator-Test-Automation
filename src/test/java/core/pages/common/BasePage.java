package core.pages.common;

import core.drivers.DriverManager;
import core.library.ReusableMethods;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import org.openqa.selenium.support.PageFactory;

public class BasePage {

    protected AppiumDriver driver;
    protected ReusableMethods reusableMethods;

    public BasePage(){
        this.driver= DriverManager.getDriver();
        PageFactory.initElements(new AppiumFieldDecorator(driver),this);
        reusableMethods=new ReusableMethods();
    }

}
