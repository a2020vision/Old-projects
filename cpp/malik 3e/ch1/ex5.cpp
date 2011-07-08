#include <iostream>

using namespace std;

int main()
{
	double length, width, area, perimeter;
	cout << "Please enter the length and width of the rectangle: ";
	cin >> length >> width;
	area = length*width;
	perimeter = 2*length + 2*width;
	cout << "The area is " << area << endl;
	cout << "The perimeter is " << perimeter << endl;
	return 0;
}

