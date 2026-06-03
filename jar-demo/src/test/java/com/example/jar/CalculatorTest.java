package com.example.jar;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {
    private final Calculator calc = new Calculator();

    @Test void add() { assertEquals(15, calc.add(10, 5)); }
    @Test void sub() { assertEquals(5, calc.sub(10, 5)); }
    @Test void mul() { assertEquals(50, calc.mul(10, 5)); }
    @Test void div() { assertEquals(2, calc.div(10, 5)); }
    @Test void divByZeroThrows() {
        assertThrows(IllegalArgumentException.class, () -> calc.div(10, 0));
    }
}
