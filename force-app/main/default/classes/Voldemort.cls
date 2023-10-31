global class Voldemort {

	public static final String NAME = 'Voldemort';
	public Integer AGE;
	public Decimal Weight;
	public String nick_name;
	public Boolean isBad = true;


	// CONSTRUCTORS

	public Voldemort() {
		delete [SELECT Id FROM Account WITH USER_MODE];
	}


	public Voldemort(ApexPages.StandardController ctrl) {
		delete [SELECT Id FROM Account WITH SYSTEM_MODE];
	}


	// PUBLIC

	public static void incorrectDebugs() {
		System.debug('Not allowed');
		System.debug(LoggingLevel.ERROR, 'Allowed');
	}


	public static Blob badCrypo(String secret) {
		Blob iv = Blob.valueOf('NameOfMyDog');
		Blob key = Blob.valueOf('21353we45242');

		System.debug(secret);

		return Crypto.encrypt('AES128', key, iv, Blob.valueOf(secret));
	}


	public static void crudFlsOnQueries(String id, String email) {
		List<Contact> c = [SELECT Id FROM Contact];
		c = [SELECT Id FROM Contact WITH USER_MODE];
		c = [SELECT Id FROM Contact WITH SYSTEM_MODE];
		c = Database.query('SELECT Id FROM Contact', AccessLevel.SYSTEM_MODE);
		
		update c;
		update as user c;
		delete as system c;
	}


	public static void insecureEndpoint() {
		new HttpRequest().setEndpoint('http://localhost:com');
	}


	public static PageReference openRedirect() {
		String url = ApexPages.currentPage().getParameters().get('url_param');
		return new PageReference(url);
	}


	public static Account soqlInjection(Id id) {
		return (Account) Database.query('SELECT Id FROM Account WHERE Id = ' + id);
	}


	public static void betterUseNamedCredential(String username, String password) {
		Blob headerValue = Blob.valueOf(username + ':' + password);
		String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);
		new HttpRequest().setHeader('Authorization', authorizationHeader);
	}


	public static void xssFromUrlParam() {
		String url = ApexPages.currentPage().getParameters().get('url_param');
		doStuff(url);
	}


	public static void deeplyNestedIf(Integer x, Integer y, Integer z) {
		if(x>y) {
			if(y>z) {
				if(z==x) {
					Integer space = x * y * z;
					// ...
				}
			}
		}
	}


	public void dmlInLoops(List<Account> accounts) {
		for(Account a : accounts) {
			update a;
		}
	}


	public void avoidHardcodingIds(Account a) {
		if(a.Id == '012500000009WAr') {
			a.Description = 'VIP';
		}
	}


	public void badVariableNaming() {
		String NAME = 'John';
		String LastName = 'Mueller';
		Integer annual_Salary = 100000;
	}


	public void Bad_Method_NAMING() {
		doStuff(null);
	}


	public void Voldemort() {
		doStuff(null);
	}


	public Integer soqlInLoops(List<Account> accounts) {
		Integer result = 0;

		for(Account a : accounts) {
			Integer contacts = [SELECT Count() FROM Contact WHERE AccountId = :a.Id];
			result += contacts;
		}

		return result;
	}


	public void soslInLoops() {
		for(Integer i = 0; i < 10; i++) {
			List<List<SObject>> searchList = [FIND 'map*' IN ALL FIELDS RETURNING Account (Id, Name), Contact, Lead];
		}
	}

	public void addPerson(Integer birthYear, Integer birthMonth, Integer birthDate, Integer height, Integer weight) {
		Contact c = new Contact(Birthdate=Date.newInstance(birthYear, birthMonth, birthDate));
	}


	public void complexity(Integer z) {
		if(age == Weight || (Weight == age && z == weight)) {
			if(age == z) {
				doStuff(Weight);
			}
			else if(z == weight) {
				doStuff(Weight);
			}
			else {
				doStuff(weight);
			}
		}
		else if(z == weight) {
			while(age == weight) {
				doStuff(age);
			}
		}
		else if(age == z) {
			for(Integer n = 0; n < age; n++) {
				doStuff(Weight + n);
			}
		}
		else {
			switch on z {
				when 1 {
					doStuff(z);
				}
				when 3 {
					doStuff(z + 2);
				}
				when else {
					doStuff(0);
				}
			}
		}
	}


	public void emptyId(Contact c) {
		if(c.Id == null) {

		}
		else {
			delete as user c;
		}
	}


	public void emptyCatch(Account a) {
		try {
			delete a;
		}
		catch(Exception ex) {
			// ignored
		}
	}


	public void emptyBlock() {

	}


	public void emptyTryOrFinally(Account a) {
		try {
			delete a;
		}
		catch(Exception ex) {
			System.debug(LoggingLevel.ERROR, ex);
		}
		finally {

		}
	}


	public Integer emptyWhile(Integer i) {
		while(i++>1000) {

		}

		return i;
	}


	public void forWithoutBraces(List<Contact> contacts) {
		for(Contact c : contacts)
			c.Account = null;

		update contacts;
	}


	public void ifWithoutBraces(Account a) {
		if(a.Name == 'Acme')
			delete a;
	}


	public void elseWithoutBraces(Account a) {
		if(a.Name != 'Acme') {
			a.Name += ' (approved)';
		}
		else
			delete as user a;
	}


	public void whileWithoutBraces(List<Account> accounts) {
		Integer count = 0;

		while(count < 10)
			accounts[count].Description = 'Lottery Price';
		count++;
	}


	public void oneDeclarationPerLine(Contact c, Account a) {
		String first, last = 'X';
	}


	// PRIVATE

	public static void doStuff(Object o) {
		exessiveLength(2);
	}


	public static void exessiveLength(Integer x) {
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;
		x++;

		x++;
	}


	// INNER

	public class badClass_Naming {
		public void doStuff(Account a) {
			delete a;
		}
	}
}