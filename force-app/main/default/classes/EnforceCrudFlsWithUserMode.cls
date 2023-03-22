public with sharing class EnforceCrudFlsWithUserMode {

    public void staticSoql() {
        return [SELECT Name FROM Account];
    }

    public void dynamicSoql() {
        return Database.query('SELECT Name FROM Account');
    }

    public void queryLocator() {
        return Database.getQueryLocator(soql);
    }

    // PMD False Positive: Code ALWAYS passes in User Mode
    @SuppressWarnings('PMD.EnforceCrudFlsWithUserMode')
    public void queryLocator(AccessLevel level) {
        return Database.getQueryLocator(soql, level);
    }

    public void count() {
        return Database.count(soql);
    }

    public void sosl() {
        return Search.query(sosl);
    }
}