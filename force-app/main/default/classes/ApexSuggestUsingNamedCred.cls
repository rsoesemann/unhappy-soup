public with sharing class ApexSuggestUsingNamedCred {

	public void main(String username, String password) {
		HttpRequest req = new HttpRequest();

		Blob headerValue = Blob.valueOf(username + ':' + password);
		String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);

		req.setHeader('Authorization', authorizationHeader);
	}
}