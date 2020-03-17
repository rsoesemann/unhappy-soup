public with sharing class CognitiveComplexity {

    public Integer sumOfPrimes(Integer max) {        // +1
        Integer total = 0;

        for(Integer i=1; i<max; i++) {               // +1
            for(Integer j=1; i<j; j++) {             // +1
                if(Math.mod(i, j) == 0) {            // +1
                    continue;
                }
            }

            total += i;
        }

        return total;
    }
}