public with sharing class ForLoopsMustUseBraces {

	public void main(List<Contact> contacts) {
		for(Contact c : contacts)
			c.Account = null;

		update contacts;
	}
}