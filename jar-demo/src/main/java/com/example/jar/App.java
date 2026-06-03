package com.example.jar;

public class App {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        int a = 10;
        int b = 5;

        System.out.println("JAR Demo ✅ (Maven lifecycle + reports)");
        System.out.println("add(" + a + "," + b + ") = " + calc.add(a, b));
        System.out.println("sub(" + a + "," + b + ") = " + calc.sub(a, b));
        System.out.println("mul(" + a + "," + b + ") = " + calc.mul(a, b));
        System.out.println("div(" + a + "," + b + ") = " + calc.div(a, b));
    }
}
