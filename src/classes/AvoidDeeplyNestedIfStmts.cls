public with sharing class AvoidDeeplyNestedIfStmts {
	public void main() {
		for (Integer i = 0; i < 151; i++) {
			Account account;
			// ...
			insert account;
		}
	}
}