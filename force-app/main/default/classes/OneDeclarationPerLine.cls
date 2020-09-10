public with sharing class OneDeclarationPerLine {

	public void main() {
		Contact c = createContact(); init(c);
	}

	private Contact createContact() {
		return new Contact();
	}

	private void init(Contact c) {

	}
}