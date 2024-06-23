public class CustomCollege {
    public string universityName = 'A';
    public string collegeName = 'B';
    public string combination = universityName + ' ' + collegeName;
    private Integer year;
    Decimal revenue;
    
    public String createCustomCombination(String customStr) {
        combination = universityName + ' ' + collegeName + ' ' + customStr;
        return combination;
    }
}