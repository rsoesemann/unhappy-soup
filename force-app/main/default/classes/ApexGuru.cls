public with sharing class ApexGuru {

	// Note: Taken from https://developer.salesforce.com/blogs/2024/02/get-ai-powered-insights-for-your-apex-code-with-apexguru

	public void efficientTypeByName(String objectName) {
		SObjectType slower = Schema.getGlobalDescribe().get(objectName);
		SObjectType faster = ((SObject)Type.forName(objectName).newInstance()).getSObjectType();
	}

	public List<Task> efficientInStatement(List<Contact> contacts) {
		List<Task> slow = [SELECT Id FROM Task WHERE WhoId IN :contacts WITH USER_MODE];
		List<Task> fast = [SELECT Id FROM Task WHERE WhoId IN :contacts.keySet() WITH USER_MODE];
	}
}