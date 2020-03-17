public with sharing class CyclomaticComplexity {
	private Integer a,b,c,d,e,f;

	public void main(Integer z) {
		if(a == b || (c == d && e == f)) {
			if(a == e) {
				main(e);
			}
			else if(c == b) {
				main(b);
			}
			else {
				main(c);
			}
		}
		else if(c == d) {
			while(c == d) {
				main(d);
			}
		}
		else if(e == f) {
			for(Integer n = 0; n < e; n++) {
				main(f + n);
			}
		}
		else {
			switch on z {
				when 1 {
					main(z);
				}
				when 2 {
					main(z + 2);
				}
				when else {
					main(0);
				}
			}
		}
	}
}