public with sharing class ApexCRUDViolation {

	@SuppressWarnings('PMD.SoqlOnlyInSelectorsOrTests')
	public void main() {

		List<Contact> contacts = [SELECT Email FROM Contact WITH USER_MODE];

		if(!contacts.isEmpty() && contacts != null) {
			for(Contact c : contacts) {
				c.Email = email;
			}
		}
	}
}