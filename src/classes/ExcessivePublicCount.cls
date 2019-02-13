public with sharing class ExcessivePublicCount {

	public Integer i;
	public Decimal d;
	public Id id;
	public String s;
	public Boolean b;
	public Contact c;
	public Account a;
	public Opportunity o;

	public void doWork() {
		i = 4;
	}

	public void doMoreWork() {
		i = 6;
	}

	public void doWorkAgain() {
		i = 8;
	}
}