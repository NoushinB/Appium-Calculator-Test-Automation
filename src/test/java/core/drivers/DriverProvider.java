package core.drivers;

import core.library.Constants;
import core.library.PropertyLoader;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.options.UiAutomator2Options;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;

public class DriverProvider {
    private AppiumDriver driver;

    private final PropertyLoader properties = PropertyLoader.getInstance();

    public AppiumDriver getDriver() {
        if (driver == null) {
            initializeDriver();
        }
        return driver;
    }

    private void initializeDriver() {
        try {
            if (properties.getPlatform().equalsIgnoreCase(Constants.Platform.ANDROID)) {
                initializeAndroidDriver();
            } else {
                initializeAIosDriver();
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
    }

    private void initializeAndroidDriver() throws MalformedURLException {
        UiAutomator2Options options = new UiAutomator2Options();
        options.setPlatformName("Android");
        options.setAutomationName("UiAutomator2");
        options.setApp(properties.getAppPath());
        options.setDeviceName("NoushinEm");
        options.setNewCommandTimeout(Duration.ofSeconds(120));
        options.autoGrantPermissions();

        URL url = new URL("http://127.0.0.1:4723");

        driver = new AndroidDriver(url, options);
    }

    private void initializeAIosDriver() throws MalformedURLException {
        // TODO: Initialize iOS Driver
    }

}
