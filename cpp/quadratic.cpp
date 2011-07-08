//Program to perform the basic quadratic formula.

#include <iostream>
#include <complex>
#include <cmath>
using namespace std;
int main()
{
    // Doubles a, b, and c are from the formula "ax^2 + bx +c = 0"
    // Doubles x1 and x2 are the roots.
    complex<double> a;
    complex<double> b;
    complex<double> c;
    complex<double> x1;
    complex<double> x2;
    complex<double> R;
/*    complex<double> x1i;
    complex<double> x2i;*/
    //bool isReal;
    cout << "Welcome to Nick Leep's Quadratic Formula Program." << endl;
    cout << "I'm going to need you to rearrange your equation to the form: " << endl;
    cout << "a * x ^ 2 + b * x + c = 0" << endl;
    cout << "Press Enter when you're done." << endl;
    cin.get();
    cin.clear();
    cout << "Value of a = ";
    cin >> a;
    cout << "Value of b = ";
    cin >> b;
    cout << "Value of c = ";
    cin >> c;
    R = pow(b,2)-4.0*a*c;
   /* if (R < 0.0)
    {   //isReal=false;
        cout << "Nonreal roots! my C++ skills fail me :-( " << endl;
        cout << "Sorry guys, I'll find some way to do this later" << endl;
        //x1i=(-b+sqrt(R))/(2*a);
        //x2i = (-b - sqrt(R))/(2*a);
        //cout << x1i << endl;
        //cout << x2i << endl;
    }
    else
    {*/
        x1=(-b+sqrt(R))/(2.0*a);
        x2 = (-b - sqrt(R))/(2.0*a);
        cout << "x = " << x1 << " or x = " << x2 << endl;
   // }
    cout << "Thanks for using my program, I hope it's helpful." << endl;

    return 0;
}
