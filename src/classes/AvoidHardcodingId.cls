public with sharing class AvoidHardcodingId {

	public void main(Account a) {
		if(a.Id == '012500000009WAr') {
			a.Description = 'VIP';
			// ...
		}
	}
}