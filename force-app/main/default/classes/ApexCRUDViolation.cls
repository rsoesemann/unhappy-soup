public with sharing class ApexCRUDViolation {

	public void main(String id, String email) {
		Contact c = [SELECT Email FROM Contact WHERE Id = :id];
		c.Email = email;
		update c;
	}
}