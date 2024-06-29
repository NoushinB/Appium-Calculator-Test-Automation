package hooks;

import core.drivers.DriverManager;
import core.drivers.DriverProvider;
import core.library.Constants;
import core.library.PropertyLoader;
import io.cucumber.java.After;
import io.cucumber.java.AfterAll;
import io.cucumber.java.Before;
import io.cucumber.java.BeforeAll;

public class Hooks {

    @BeforeAll
    public static void setup() {
        PropertyLoader.getInstance().setPlatform(Constants.Platform.ANDROID);
        PropertyLoader.getInstance().setAppPath(Constants.Apps.ANDROID);

    }

    @Before
    public static void beforeTest() {
        DriverProvider driverProvider = new DriverProvider();
        DriverManager.setDriver(driverProvider.getDriver());
    }

    @After
    public static void afterTest() {
        DriverManager.removeDriver();
    }

    @AfterAll
    public static void tearDown() {
    }
}
