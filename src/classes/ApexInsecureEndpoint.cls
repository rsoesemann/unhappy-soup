public with sharing class ApexInsecureEndpoint {

	public void main() {
		new HttpRequest().setEndpoint('http://localhost:com');
	}
}