public with sharing class AvoidDmlStatementsInLoops {

	public void touchAll(List<Account> accounts) {
		for(Account a : accounts) {
			update a;
		}
	}
}