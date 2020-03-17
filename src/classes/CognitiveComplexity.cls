public with sharing class CognitiveComplexity {

    private void foo() {
        Integer n = 0;
        do {                                // +1
            if (n == 3) {                   // +2
                System.debug('n is 3');
            }
            else if (n == 4) {              // +2
                System.debug('n is 3');
            }
            else {                          // +2
                System.debug('n is not 3');
            }
            n++;
        } while (n < 100);
    }
}