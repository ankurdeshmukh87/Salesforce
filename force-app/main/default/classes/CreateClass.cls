public class CreateClass {
    public static void createNewClass() {
        ContentVersion cv = new ContentVersion();
        cv.ContentLocation = 'S';
        String base64Data = 'public static testClassNewTry';
        cv.VersionData = EncodingUtil.base64Decode(base64Data);
        cv.Title = 'testClassNewTry.apxc';
        cv.PathOnClient = 'testClassNewTry.apxc';
        
        try {
            insert cv;
            system.debug('all good');
        } catch (Exception e) {
            system.debug(e.getCause());
            system.debug(e.getInaccessibleFields());
            system.debug(e.getLineNumber());
            system.debug(e.getMessage());
            system.debug(e.getTypeName());
        }
    }
}