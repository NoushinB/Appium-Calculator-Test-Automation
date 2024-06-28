package core.library;

public class PropertyLoader {

    private  static volatile PropertyLoader instance;

    public static PropertyLoader getInstance(){
        if (instance==null){
            synchronized (PropertyLoader.class){
                if (instance==null){
                    instance=new PropertyLoader();
                }
            }
        }
        return instance;
    }
}
