global class Voldemort {

	public Integer UPPERCASE = 10;
	public static final String lowercase = 'Voldemort';

	public Voldemort() {
		delete [SELECT Id FROM Account];
	}

	public Integer Calculate_Factor(Integer a, Integer b, Integer c, String rate) {
		Integer result = 0;

		if(a == b) {
			if(a == c) {
				if(rate == 'X10')
					result += 2;
				else
					result += 3;
			}
		}

		while(result == 10)
			result++;

		result += a; result += b;

		return result;
	}


	public void remove(List<Contact> contacts) {
		try {
			for(Contact c : contacts)
				if(c.Id != 'a2R1T0000034g7tUAA') {
					c.Email = '';
					update c;
				}
				else {
					delete c;
				}
		}
		catch(Exception ignored) {
			// TODO maybe display toast in UI
		}
	}


	public void foo() {
		// ..
	}


	public void bar() {
		// ..
	}


	public void foo(Integer i) {
		// ..
	}


	public void bar(Integer i) {
		// ..
	}


	public void foo(Integer i) {
		// ..
	}


	public void bar(Decimal i) {
		// ..
	}


	public void foo(Decimal i) {
		// ..
	}


	public void bar(Boolean i) {
		// ..
	}
}