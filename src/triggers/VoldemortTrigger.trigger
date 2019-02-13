trigger VoldemortTrigger on Account (before insert, before delete) {
	for(Account acc : Trigger.new) {
		if(Trigger.isInsert) {
			acc.addError('not allowed');
		}

		if(Trigger.isDelete) {
			acc.addError('not allowed');
		}
	}
}