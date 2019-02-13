public class ApexSOQLInjection {

	public void remove(Id id) {
		delete [SELECT Id FROM Contact WHERE Id = :id];
	}
}