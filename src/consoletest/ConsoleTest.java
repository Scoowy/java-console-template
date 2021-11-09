package consoletest;

import utils.Operations;

public class ConsoleTest {
	public static void main(String[] args) {
		System.out.println("Hello desde el paquete consoletest");

		System.out.println("Suma desde paquete utils");

		int a = 4;
		int b = 5;
		int res = Operations.suma(a, b);

		System.out.printf("Suma %d + %d es: %d", a, b, res);
	}
}
