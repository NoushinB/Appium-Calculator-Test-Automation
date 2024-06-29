package core.library;

import io.appium.java_client.AppiumDriver;

public class ReusableUIMethods {
    protected final AppiumDriver driver;

    public ReusableUIMethods(AppiumDriver driver){
        this.driver=driver;
    }
}
