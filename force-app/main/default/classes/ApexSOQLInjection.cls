public class ApexSOQLInjection {

	public Account main(Id id) {
		return (Account) Database.query('SELECT Id FROM Account WHERE Id = ' + id);
	}
}