#include <iostream>
#include <string>//part a

using namespace std;//part b

int main()
{
	const int SECRET = 11;
	const double RATE = 12.5;//part c
	
	int num1, num2, newNum;
	string name;
	double hoursWorked, wages;// part d
	cout << "Please enter two numbers: ";
	cin >> num1 >> num2;// part e
	cout << "num1: " << num1 << endl << "num2: " << num2 << endl; // part f
	newNum = 2*num1 + num2;
	cout << "newNum: " << newNum << endl;//part g
	newNum = newNum + SECRET;
	cout << "newNum is now: " << newNum<<endl;// part h
	cout << "Please enter your last name: ";
	cin >> name; // part i
	cout << "Please enter the number of hours worked (0-70): ";
	cin >> hoursWorked; // part j
	wages = RATE * hoursWorked; // part k
	cout << "Name: " << name << endl << "Pay Rate: $" << RATE << endl << "Hours worked: " << hoursWorked << endl << "Salary: $" << wages << endl; //part l
	
	return 0;
}

