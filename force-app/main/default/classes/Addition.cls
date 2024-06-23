public class Addition {
	public Integer a;
    Integer b;
  
    public Decimal getValue(Integer v) {
        Decimal f = a+v;
		return addTo(f);
    }
    
    public Decimal addTo(Decimal b) {
        return a + b;
    }
}