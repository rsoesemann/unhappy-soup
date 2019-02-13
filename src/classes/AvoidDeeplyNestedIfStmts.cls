public with sharing class AvoidDeeplyNestedIfStmts {

	public void coords(Integer x, Integer y, Integer z) {
		if(x>y) {
			if(y>z) {
				if(z==x) {
					Integer space = x * y * z;
					// ...
				}
			}
		}
	}
}