public with sharing class ApexXSSFromURLParam {

	public void main() {
		String url = ApexPages.currentPage().getParameters().get('url_param');

		doMagic(url);
	}


	private void doMagic(String value) {
		//...
	}
}