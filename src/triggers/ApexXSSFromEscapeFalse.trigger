trigger ApexXSSFromEscapeFalse on Account (after insert) {
	for(Account acc : Trigger.new) {
		String vulnerableHTMLGoesHere = '...';
		acc.addError(vulnerableHTMLGoesHere, false);
	}
}