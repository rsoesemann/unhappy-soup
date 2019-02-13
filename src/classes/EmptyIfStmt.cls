public with sharing class EmptyIfStmt {

	public void main(Contact c) {
		if(c.Id == null) {

		}
		else {
			delete c;
		}
	}
}