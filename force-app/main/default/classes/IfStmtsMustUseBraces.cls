public with sharing class IfStmtsMustUseBraces {

	public void main(Account a) {
		if(a.Name == 'Acme')
			delete a;
	}
}