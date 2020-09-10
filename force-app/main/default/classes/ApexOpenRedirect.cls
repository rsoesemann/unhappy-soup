public with sharing class ApexOpenRedirect {

	public void main() {
		PageReference page = ApexPages.getCurrentPage();
		String url = page.getParameters.get('url_param');
		return new PageReference(url);
	}
}