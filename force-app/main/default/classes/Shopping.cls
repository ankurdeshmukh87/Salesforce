public class Shopping {
    private String shoeBrand;
    private Integer walletMoney;
    
    public Integer buyShoes(Integer cost) {
        Integer amt = payForShoes(cost);
        return amt;
    }
    
    private Integer payForShoes(Integer amount) {
        walletMoney = amount;
        return walletMoney;
    }
}