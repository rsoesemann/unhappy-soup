public with sharing class ApexXSSFromURLParam {

	public void main() {
		PageReference page = ApexPages.getCurrentPage();
		String url = page.getParameters().get('url_param');

		doMagic(url);
	}

	private void doMagic(String value) {
		//...
	}
}