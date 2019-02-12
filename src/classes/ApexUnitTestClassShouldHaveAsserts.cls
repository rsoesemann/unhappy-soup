@isTest
public class ApexUnitTestClassShouldHaveAsserts {
	public static testMethod void testSomething() {
		Account a = null;
		// This is better than having a NullPointerException
		// System.assertNotEquals(a, null, 'account not found');
		a.toString();
	}
}