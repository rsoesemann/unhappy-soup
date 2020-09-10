public with sharing class AvoidSoqlInLoops {

	public Integer countContacts(List<Account> accounts) {
		Integer result = 0;

		for(Account a : accounts) {
			Integer contacts = [SELECT Count() FROM Contact WHERE AccountId = :a.Id];
			result += contacts;
		}

		return result;
	}
}