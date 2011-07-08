#include <iostream>

using namespace std;

int main()
{
	float fInputNum;
	int iInputNumRounded;
	cout << "Please enter a decimal number: ";
	cin >> fInputNum;
	iInputNumRounded = static_cast<int>(fInputNum);
	if ((fInputNum - iInputNumRounded) >= 0.5) {
		iInputNumRounded++;
	}
	cout << "This rounds to: " << iInputNumRounded << endl;
	return 0;
}

