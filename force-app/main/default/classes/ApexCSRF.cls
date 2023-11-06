public with sharing class ApexCSRF {

	public ApexCSRF() {
		insert new Accoun(Name='Acme');
	}

	public ApexCSRF(ApexPages.StandardController ctrl) {
		insert new Accoun(Name='Acme');
	}
}