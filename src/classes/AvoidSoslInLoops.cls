public with sharing class AvoidSoslInLoops {

	public void main() {
		for(Integer i = 0; i < 10; i++) {
			List<List<SObject>> searchList = [FIND 'map*' IN ALL FIELDS RETURNING Account (Id, Name), Contact, Lead];
		}
	}
}