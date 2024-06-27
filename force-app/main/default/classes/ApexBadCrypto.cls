public with sharing class ApexBadCrypto {

	public Blob main() {
		Blob iv = Blob.valueOf('NameOfMyDog');
		Blob key = Blob.valueOf('21353we45242');
		Blob secret = Blob.valueOf('Secret');

		return Crypto.encrypt('AES128', key, iv, secret);
	}

    public static void exampleMethod() {
        List<CBConfig__c> configs = [SELECT Id FROM CBConfig__c WITH USER_MODE];
		delete as user configs;
    }
}