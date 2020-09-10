public with sharing class EmptyTryOrFinallyBlock {

	public void main(Account a) {
		try {
			delete a;
		}
		catch(Exception ex) {
			ApexPages.addMessages(ex);
		}
		finally {

		}
	}
}