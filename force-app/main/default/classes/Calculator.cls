public with sharing class Calculator {

    public static Integer Add(Integer a, Integer b){
        return a + b;
    }

    public static Integer Multiply(Integer a, Integer b) {
        Integer c = 0;

        for(Integer i = 0; i < b; i += 1) {
            c = Add(c, a);
        }

        return c;
    }

    public static Integer Divide(Integer a, Integer b) {

        if(b == 0) return 0;

        Integer quotient = 0;
        Integer sum = a;

        while (sum >= b) {
            sum -= b; 
            quotient = Add(quotient, 1);
        }

        return quotient;
    }

    public static Integer Mod(Integer a, Integer b){
        if (b == 0) {
            return 0;
        }

        while (a >= b) {
            a = a - b;
        }

        return a;
    }
}