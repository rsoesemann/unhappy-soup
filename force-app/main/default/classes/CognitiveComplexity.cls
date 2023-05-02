public with sharing class CognitiveComplexity {

    private void foo() {
        if(condition) {
            if(condition2) {
                foo();
            }
            else {
                bar();
            }
        }
        else {
            if(condition1) {
                foo();
            }
            else {
                bar();
            }
        }
    }
}