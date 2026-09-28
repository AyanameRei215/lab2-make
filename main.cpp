#include <iostream>
#include "calculator.h"

int main()
{
	Calculator calc;
	double a = 12.0;
	double b = 4.0;

	std::cout << a << " + " << b << " = " << calc.Add(a, b) << std::endl;
	std::cout << a << " - " << b << " = " << calc.Sub(a, b) << std::endl;
	std::cout << a << " * " << b << " = " << calc.Mul(a, b) << std::endl;
	std::cout << a << " / " << b << " = " << calc.Div(a, b) << std::endl;

	return 0;
}
