public with sharing class ApexOpenRedirect {

	public void main() {
		PageReference page = ApexPages.currentPage();
		String url = page.getParameters().get('url_param');
		PageReference anew = new PageReference(url);
	}
}