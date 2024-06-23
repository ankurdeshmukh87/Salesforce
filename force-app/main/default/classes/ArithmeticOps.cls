public class ArithmeticOps {
    public Decimal performAddition(Integer addParam) {
        Addition objAdd = new Addition();
        objAdd.a = addParam;
        Decimal i = objAdd.addTo(2000);
        return i;
    }
    
    public void TrySparrow(){
        Sparrow s1 = new Sparrow();
        s1.wingSpan = 4;
        s1.nestName = 'new nest';
    }
}