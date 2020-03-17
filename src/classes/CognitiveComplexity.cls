public with sharing class CognitiveComplexity {

    // Has a cognitive complexity of 0
    public void createAccount() {
        Account account = new Account(Name = 'PMD');
        insert account;
    }


    // Has a cognitive complexity of 1
    public Boolean setPhoneNumberIfNotExisting(Account a, String phone) {
        if (a.Phone == null) {                          // +1
            a.Phone = phone;
            update a;

            return true;
        }

        return false;
    }

    // Has a cognitive complexity of 5
    public void updateContacts(List<Contact> contacts) {
        List<Contact> contactsToUpdate = new List<Contact>();

        for (Contact contact : contacts) {                           // +1
            if (contact.Department == 'Finance') {                   // +2
                contact.Title = 'Finance Specialist';
                contactsToUpdate.add(contact);
            } else if (contact.Department == 'Sales') {              // +2
                contact.Title = 'Sales Specialist';
                contactsToUpdate.add(contact);
            }
        }

        update contactsToUpdate;
    }
}