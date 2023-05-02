public with sharing class SecureApexCode {

	public void makeMeSecure(List<Contact> contacts) {
		modify(contacts);

		if(AuthorizationUtil.isUpdateable(Contact.SObjectType)){
			update contacts;
		}
	}
}