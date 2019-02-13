@isTest
public class ApexUnitTestClassShouldHaveAsserts {

	@IsTest
	public static void testSomething() {
		Account a = new Account(Name = 'Invalid Name');
		insert a;
	}
}