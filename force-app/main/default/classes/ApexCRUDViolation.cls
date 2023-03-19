public with sharing class ApexCRUDViolation {

	public void main(List<Contact> contacts) {
		if(!contacts.isEmpty() && contacts != null) {
			for(Contact c : contacts) {
				c.Email = email;
			}
		}
	}
}