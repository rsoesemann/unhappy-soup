@isTest
public class Voldemort_Test {

	@IsTest(seeAllData = true)
	public static void testThis() {
		Account a = new Account(Name = 'Valid Name');
		insert a;

		Account inserted = [SELECT Id FROM Account];
		System.assertNotEquals(a.Id, inserted.Id);
	}

	@IsTest
	public static void testThat() {
		Account a = new Account(Name = 'Invalid Name');
		insert a;
	}
}