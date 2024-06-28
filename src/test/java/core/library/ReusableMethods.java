package core.library;

public class ReusableMethods {
    private static final PropertyLoader properties=PropertyLoader.getInstance();
    public boolean isAndroid(){
        return properties.getPlatform().equalsIgnoreCase(Constants.Platform.ANDROID);
    }
    public boolean isIos(){
        return properties.getPlatform().equalsIgnoreCase(Constants.Platform.IOS);
    }
}
