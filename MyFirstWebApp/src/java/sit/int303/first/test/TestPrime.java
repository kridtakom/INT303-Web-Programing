/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.test;

import sit.int303.first.model.PrimeNumber;

/**
 *
 * @author INT303
 */
public class TestPrime {

    public static void main(String[] args) {
        PrimeNumber p = new PrimeNumber(19);
        System.out.printf("%d is a PrimeNumber ? %b\n", p.getNumber(), p.isPrimeNumber());
       
        p.setNumber(27);
        System.out.printf("%d is a PrimeNumber ? %b\n", p.getNumber(), p.isPrimeNumber());

        p.setNumber(29);
        System.out.printf("%d is a PrimeNumber ? %b\n", p.getNumber(), p.isPrimeNumber());

        p.setNumber(51);
        System.out.printf("%d is a PrimeNumber ? %b\n", p.getNumber(), p.isPrimeNumber());

    }
}
