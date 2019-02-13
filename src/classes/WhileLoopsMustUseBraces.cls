public with sharing class WhileLoopsMustUseBraces {

	public void main(List<Account> accounts) {
		Integer count = 0;

		while(count < 10)
			accounts[count].Description = 'Lottery Price';
			count++;
	}
}