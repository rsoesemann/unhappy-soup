public with sharing class ApexXSSFromEscapeFalse {

	public void main() {
		String vulnerableHTMLGoesHere = '...';
		Trigger.new[0].addError(vulnerableHTMLGoesHere, false);
	}
}