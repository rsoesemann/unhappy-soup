public with sharing class IfElseStmtsMustUseBraces {

	public void main(Account a) {
		if(a.Name != 'Acme') {
			a.Name += ' (approved)';
		}
		else {
			delete a;
		}
	}
}