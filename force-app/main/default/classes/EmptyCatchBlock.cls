public with sharing class EmptyCatchBlock {

	public void main(Account a) {
		try {
			delete a;
		}
		catch(Exception ex) {
			// ignored
		}
	}
}