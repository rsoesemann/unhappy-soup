public with sharing class AvoidHardcodingId {

	public void main(Account a) {
		if(a.Id == '012500000009WAr') {
			a.Description = 'VIP';
			// ...
		}
	}
	
	public void foo() {
		insert new Custom__c(Id__c = '012500000009WAr');
	}
}
