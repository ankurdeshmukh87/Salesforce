public class AccountHolder {
    private Integer balance = 5000;
    
    public Boolean buy(Integer c) {
        Integer r = transact(c);
        
        if (r == -1) {
            return false;
        } else {
            return true;
        }
    }
    
    private Integer transact(Integer cost) {
        if (balance > cost) {
            return balance - cost;
        } else {
            return -1;
        }        
    }
}