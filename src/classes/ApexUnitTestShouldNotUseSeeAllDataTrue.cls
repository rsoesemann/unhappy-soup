@isTest(seeAllData = true)
public class ApexUnitTestShouldNotUseSeeAllDataTrue {

	@IsTest
	public static void main() {
		Account a = new Account(Name = 'Valid Name');
		insert a;

		Account inserted = [SELECT Id FROM Account];
		System.assertNotEquals(a.Id, inserted.Id);
	}
}