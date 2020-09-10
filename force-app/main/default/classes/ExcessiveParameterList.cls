public with sharing class ExcessiveParameterList {

	public void addPerson(Integer birthYear, Integer birthMonth, Integer birthDate, Integer height, Integer weight) {
		// ...
		Contact c = new Contact(Birthdate=Date.newInstance(birthYear, birthMonth, birthDate));
	}
}